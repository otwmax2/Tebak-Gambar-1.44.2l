###### Class com.facebook.appevents.suggestedevents.FeatureExtractor (com.facebook.appevents.suggestedevents.FeatureExtractor)
.class public final Lcom/facebook/appevents/suggestedevents/FeatureExtractor;
.super Ljava/lang/Object;
.source "FeatureExtractor.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

.field private static final NUM_OF_FEATURES:I = 0x1e

.field private static final REGEX_ADD_TO_CART_BUTTON_TEXT:Ljava/lang/String; = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

.field private static final REGEX_ADD_TO_CART_PAGE_TITLE:Ljava/lang/String; = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

.field private static final REGEX_CR_HAS_CONFIRM_PASSWORD_FIELD:Ljava/lang/String; = "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

.field private static final REGEX_CR_HAS_LOG_IN_KEYWORDS:Ljava/lang/String; = "(?i)(sign in)|login|signIn"

.field private static final REGEX_CR_HAS_SIGN_ON_KEYWORDS:Ljava/lang/String; = "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

.field private static final REGEX_CR_PASSWORD_FIELD:Ljava/lang/String; = "password"

.field private static eventInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static languageInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rules:Lorg/json/JSONObject;

.field private static textTypeInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-direct {v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;-><init>()V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->INSTANCE:Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDenseFeatures(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .registers 13

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "viewHierarchy"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appName"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z

    if-nez v1, :cond_19

    return-object v2

    :cond_19
    const/4 v1, 0x0

    const/16 v3, 0x1e

    new-array v4, v3, [F

    :goto_1e
    if-ge v1, v3, :cond_26

    const/4 v5, 0x0

    .line 2
    aput v5, v4, v1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_73

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 3
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string p1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v10, p1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    const-string v1, "view"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "screenname"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 7
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->INSTANCE:Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-direct {p0, p1, v7}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->parseFeatures(Lorg/json/JSONObject;)[F

    move-result-object v1

    .line 9
    invoke-direct {p0, v4, v1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V

    .line 10
    invoke-direct {p0, p1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_5c

    return-object v2

    :cond_5c
    const-string v1, "screenName"

    .line 11
    invoke-static {v8, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string p1, "viewTree.toString()"

    invoke-static {v9, p1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->nonparseFeatures(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p1

    .line 12
    invoke-direct {p0, v4, p1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_72} :catch_72
    .catchall {:try_start_26 .. :try_end_72} :catchall_73

    :catch_72
    return-object v4

    :catchall_73
    move-exception p0

    .line 13
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v0, "is_interacted"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    :cond_11
    const-string v0, "childviews"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1a

    return-object v1

    :cond_1a
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3c

    :goto_21
    add-int/lit8 v3, v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "children.getJSONObject(i)"

    invoke-static {v0, v4}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_30} :catch_3c
    .catchall {:try_start_8 .. :try_end_30} :catchall_38

    if-eqz v0, :cond_33

    return-object v0

    :cond_33
    if-lt v3, v2, :cond_36

    goto :goto_3c

    :cond_36
    move v0, v3

    goto :goto_21

    :catchall_38
    move-exception p1

    .line 5
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_3c
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public static final getTextFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "buttonText"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activityName"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appName"

    invoke-static {p2, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0, p1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_41
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final initialize(Ljava/io/File;)V
    .registers 14

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    const-string v1, "4"

    const-string v2, "3"

    const-string v3, "2"

    const-string v4, "1"

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    return-void

    .line 1
    :cond_11
    :try_start_11
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;

    .line 2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result p0

    .line 4
    new-array p0, p0, [B

    .line 5
    invoke-virtual {v5, p0}, Ljava/io/InputStream;->read([B)I

    .line 6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 7
    new-instance v5, Lorg/json/JSONObject;

    sget-object v6, Lba/d;->b:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_f4
    .catchall {:try_start_11 .. :try_end_37} :catchall_f0

    const/4 p0, 0x4

    :try_start_38
    new-array v5, p0, [Lh9/m;

    const-string v6, "ENGLISH"

    .line 8
    invoke-static {v6, v4}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "GERMAN"

    invoke-static {v6, v3}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "SPANISH"

    invoke-static {v6, v2}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "JAPANESE"

    invoke-static {v6, v1}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v5, v10

    invoke-static {v5}, Li9/a0;->f([Lh9/m;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const/16 v5, 0x9

    new-array v5, v5, [Lh9/m;

    const-string v6, "VIEW_CONTENT"

    const-string v11, "0"

    .line 9
    invoke-static {v6, v11}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "SEARCH"

    .line 10
    invoke-static {v6, v4}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "ADD_TO_CART"

    .line 11
    invoke-static {v6, v3}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "ADD_TO_WISHLIST"

    .line 12
    invoke-static {v6, v2}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "INITIATE_CHECKOUT"

    .line 13
    invoke-static {v6, v1}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v6

    aput-object v6, v5, p0

    const/4 v6, 0x5

    const-string v11, "ADD_PAYMENT_INFO"

    const-string v12, "5"

    .line 14
    invoke-static {v11, v12}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v11

    aput-object v11, v5, v6

    const/4 v6, 0x6

    const-string v11, "PURCHASE"

    const-string v12, "6"

    .line 15
    invoke-static {v11, v12}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v11

    aput-object v11, v5, v6

    const/4 v6, 0x7

    const-string v11, "LEAD"

    const-string v12, "7"

    .line 16
    invoke-static {v11, v12}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v11

    aput-object v11, v5, v6

    const/16 v6, 0x8

    const-string v11, "COMPLETE_REGISTRATION"

    const-string v12, "8"

    .line 17
    invoke-static {v11, v12}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v11

    aput-object v11, v5, v6

    .line 18
    invoke-static {v5}, Li9/a0;->f([Lh9/m;)Ljava/util/Map;

    move-result-object v5

    .line 19
    sput-object v5, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    new-array p0, p0, [Lh9/m;

    const-string v5, "BUTTON_TEXT"

    .line 20
    invoke-static {v5, v4}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v4

    aput-object v4, p0, v7

    const-string v4, "PAGE_TITLE"

    invoke-static {v4, v3}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v3

    aput-object v3, p0, v8

    const-string v3, "RESOLVED_DOCUMENT_LINK"

    invoke-static {v3, v2}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v2

    aput-object v2, p0, v9

    const-string v2, "BUTTON_ID"

    invoke-static {v2, v1}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v1

    aput-object v1, p0, v10

    .line 21
    invoke-static {p0}, Li9/a0;->f([Lh9/m;)Ljava/util/Map;

    move-result-object p0

    .line 22
    sput-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    .line 23
    sput-boolean v8, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z
    :try_end_ef
    .catchall {:try_start_38 .. :try_end_ef} :catchall_f0

    return-void

    :catchall_f0
    move-exception p0

    .line 24
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_f4
    return-void
.end method

.method private final isButton(Lorg/json/JSONObject;)Z
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    const-string v0, "classtypebitmask"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_16

    const/4 v0, 0x1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x5

    if-lez p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    :catchall_16
    move-exception p1

    .line 2
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static final isInitialized()Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 1
    :cond_a
    :try_start_a
    sget-boolean v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    return v0

    :catchall_d
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private final matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    array-length v0, p1

    const/4 v2, 0x0

    :cond_a
    if-ge v2, v0, :cond_22

    aget-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2
    array-length v4, p2

    const/4 v5, 0x0

    :cond_12
    if-ge v5, v4, :cond_a

    aget-object v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 3
    invoke-static {v6, v3, v1, v7, v8}, Lba/g;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    if-eqz v6, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_22
    return v1

    :catchall_23
    move-exception p1

    .line 4
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final nonparseFeatures(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const-string v2, "LEAD"

    const-string v3, "PURCHASE"

    const-string v4, "PAGE_TITLE"

    const-string v5, "BUTTON_TEXT"

    const-string v6, "COMPLETE_REGISTRATION"

    const-string v7, "ENGLISH"

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_18

    return-object v9

    :cond_18
    const/16 v8, 0x1e

    :try_start_1a
    new-array v10, v8, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1e
    const/4 v13, 0x0

    if-ge v12, v8, :cond_26

    .line 1
    aput v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    .line 2
    :cond_26
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v12, 0x3

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    if-le v8, v14, :cond_33

    int-to-float v8, v8

    sub-float/2addr v8, v15

    goto :goto_34

    :cond_33
    const/4 v8, 0x0

    :goto_34
    aput v8, v10, v12
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_168

    .line 3
    :try_start_36
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_5e

    const/4 v12, 0x0

    :goto_3d
    add-int/lit8 v14, v12, 0x1

    move-object/from16 v13, p2

    .line 4
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v9, "siblings.getJSONObject(i)"

    invoke-static {v12, v9}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v12}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->isButton(Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_57

    const/16 v9, 0x9

    .line 5
    aget v12, v10, v9

    add-float/2addr v12, v15

    aput v12, v10, v9
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_57} :catch_5e
    .catchall {:try_start_36 .. :try_end_57} :catchall_168

    :cond_57
    if-lt v14, v8, :cond_5a

    goto :goto_5e

    :cond_5a
    move v12, v14

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_3d

    :catch_5e
    :cond_5e
    :goto_5e
    const/16 v8, 0xd

    const/high16 v9, -0x40800000    # -1.0f

    :try_start_62
    aput v9, v10, v8

    const/16 v8, 0xe

    aput v9, v10, v8

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x7c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p1

    .line 9
    invoke-direct {v1, v13, v12, v9}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 10
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "hintSB.toString()"

    invoke-static {v9, v13}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "textSB.toString()"

    invoke-static {v12, v13}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0xf

    .line 12
    invoke-direct {v1, v7, v6, v5, v12}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ac

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_ad

    :cond_ac
    const/4 v14, 0x0

    :goto_ad
    aput v14, v10, v13

    const/16 v13, 0x10

    .line 13
    invoke-direct {v1, v7, v6, v4, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ba

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_bb

    :cond_ba
    const/4 v14, 0x0

    :goto_bb
    aput v14, v10, v13

    const/16 v13, 0x11

    const-string v14, "BUTTON_ID"

    .line 14
    invoke-direct {v1, v7, v6, v14, v9}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ca

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_cb

    :cond_ca
    const/4 v6, 0x0

    :goto_cb
    aput v6, v10, v13

    const/16 v6, 0x12

    const-string v9, "password"

    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 15
    invoke-static {v0, v9, v11, v13, v14}, Lba/g;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dc

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_dd

    :cond_dc
    const/4 v9, 0x0

    :goto_dd
    aput v9, v10, v6

    const/16 v6, 0x13

    const-string v9, "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

    .line 16
    invoke-direct {v1, v9, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ec

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_ed

    :cond_ec
    const/4 v9, 0x0

    :goto_ed
    aput v9, v10, v6

    const/16 v6, 0x14

    const-string v9, "(?i)(sign in)|login|signIn"

    .line 17
    invoke-direct {v1, v9, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_fc

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_fd

    :cond_fc
    const/4 v9, 0x0

    :goto_fd
    aput v9, v10, v6

    const/16 v6, 0x15

    const-string v9, "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

    .line 18
    invoke-direct {v1, v9, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_10d

    :cond_10c
    const/4 v0, 0x0

    :goto_10d
    aput v0, v10, v6

    const/16 v0, 0x16

    .line 19
    invoke-direct {v1, v7, v3, v5, v12}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11a

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_11b

    :cond_11a
    const/4 v6, 0x0

    :goto_11b
    aput v6, v10, v0

    const/16 v0, 0x18

    .line 20
    invoke-direct {v1, v7, v3, v4, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_128

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_129

    :cond_128
    const/4 v3, 0x0

    :goto_129
    aput v3, v10, v0

    const/16 v0, 0x19

    const-string v3, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

    .line 21
    invoke-direct {v1, v3, v12}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_138

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_139

    :cond_138
    const/4 v3, 0x0

    :goto_139
    aput v3, v10, v0

    const/16 v0, 0x1b

    const-string v3, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

    .line 22
    invoke-direct {v1, v3, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_148

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_149

    :cond_148
    const/4 v3, 0x0

    :goto_149
    aput v3, v10, v0

    const/16 v0, 0x1c

    .line 23
    invoke-direct {v1, v7, v2, v5, v12}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_156

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_157

    :cond_156
    const/4 v3, 0x0

    :goto_157
    aput v3, v10, v0

    const/16 v0, 0x1d

    .line 24
    invoke-direct {v1, v7, v2, v4, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_164

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_165

    :cond_164
    const/4 v13, 0x0

    :goto_165
    aput v13, v10, v0
    :try_end_167
    .catchall {:try_start_62 .. :try_end_167} :catchall_168

    return-object v10

    :catchall_168
    move-exception v0

    .line 25
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private final parseFeatures(Lorg/json/JSONObject;)[F
    .registers 15

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    const/16 v1, 0x1e

    :try_start_c
    new-array v3, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_18

    const/4 v6, 0x0

    .line 1
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_18
    const-string v1, "text"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "node.optString(TEXT_KEY)"

    invoke-static {v1, v5}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "hint"

    .line 3
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "node.optString(HINT_KEY)"

    invoke-static {v5, v6}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "classname"

    .line 4
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "node.optString(CLASS_NAME_KEY)"

    invoke-static {v6, v7}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputtype"

    const/4 v7, -0x1

    .line 5
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    aput-object v1, v8, v4

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const-string v5, "$"

    const-string v10, "amount"

    const-string v11, "price"

    const-string v12, "total"

    .line 6
    filled-new-array {v5, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v5, :cond_76

    .line 7
    aget v5, v3, v4

    add-float/2addr v5, v10

    aput v5, v3, v4

    :cond_76
    const-string v5, "password"

    const-string v11, "pwd"

    .line 8
    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 9
    aget v5, v3, v9

    add-float/2addr v5, v10

    aput v5, v3, v9

    :cond_89
    const-string v5, "tel"

    const-string v11, "phone"

    .line 10
    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 11
    aget v5, v3, v7

    add-float/2addr v5, v10

    aput v5, v3, v7

    :cond_9c
    const-string v5, "search"

    .line 12
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    const/4 v5, 0x4

    .line 13
    aget v8, v3, v5

    add-float/2addr v8, v10

    aput v8, v3, v5

    :cond_ae
    if-ltz v0, :cond_b6

    const/4 v5, 0x5

    .line 14
    aget v8, v3, v5

    add-float/2addr v8, v10

    aput v8, v3, v5

    :cond_b6
    const/4 v5, 0x3

    if-eq v0, v5, :cond_bb

    if-ne v0, v7, :cond_c1

    :cond_bb
    const/4 v5, 0x6

    .line 15
    aget v8, v3, v5

    add-float/2addr v8, v10

    aput v8, v3, v5

    :cond_c1
    const/16 v5, 0x20

    if-eq v0, v5, :cond_d1

    .line 16
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d7

    :cond_d1
    const/4 v0, 0x7

    .line 17
    aget v5, v3, v0

    add-float/2addr v5, v10

    aput v5, v3, v0

    :cond_d7
    const-string v0, "checkbox"

    .line 18
    invoke-static {v6, v0, v4, v7, v2}, Lba/g;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const/16 v0, 0x8

    .line 19
    aget v5, v3, v0

    add-float/2addr v5, v10

    aput v5, v3, v0

    :cond_e6
    const-string v0, "complete"

    const-string v5, "confirm"

    const-string v8, "done"

    const-string v11, "submit"

    .line 20
    filled-new-array {v0, v5, v8, v11}, [Ljava/lang/String;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/String;

    aput-object v1, v5, v4

    invoke-direct {p0, v0, v5}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    const/16 v0, 0xa

    .line 21
    aget v1, v3, v0

    add-float/2addr v1, v10

    aput v1, v3, v0

    :cond_103
    const-string v0, "radio"

    .line 22
    invoke-static {v6, v0, v4, v7, v2}, Lba/g;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const-string v0, "button"

    invoke-static {v6, v0, v4, v7, v2}, Lba/g;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const/16 v0, 0xc

    .line 23
    aget v1, v3, v0

    add-float/2addr v1, v10

    aput v1, v3, v0
    :try_end_11a
    .catchall {:try_start_c .. :try_end_11a} :catchall_13e

    :cond_11a
    :try_start_11a
    const-string v0, "childviews"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_13d

    :goto_126
    add-int/lit8 v1, v4, 0x1

    .line 26
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "childViews.getJSONObject(i)"

    invoke-static {v4, v5}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->parseFeatures(Lorg/json/JSONObject;)[F

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V
    :try_end_138
    .catch Lorg/json/JSONException; {:try_start_11a .. :try_end_138} :catch_13d
    .catchall {:try_start_11a .. :try_end_138} :catchall_13e

    if-lt v1, v0, :cond_13b

    goto :goto_13d

    :cond_13b
    move v4, v1

    goto :goto_126

    :catch_13d
    :cond_13d
    :goto_13d
    return-object v3

    :catchall_13e
    move-exception p1

    .line 27
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .registers 13

    const-string v0, "childviews"

    const-string v1, "is_interacted"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return v3

    .line 1
    :cond_c
    :try_start_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_14

    return v4

    .line 2
    :cond_14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_33

    const/4 v6, 0x0

    :goto_1f
    add-int/lit8 v7, v6, 0x1

    .line 4
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 5
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_35

    :cond_2e
    if-lt v7, v5, :cond_31

    goto :goto_33

    :cond_31
    move v6, v7

    goto :goto_1f

    :cond_33
    :goto_33
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_35
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    if-eqz v1, :cond_51

    .line 7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_75

    const/4 v0, 0x0

    :goto_43
    add-int/lit8 v1, v0, 0x1

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-lt v1, p1, :cond_4f

    goto :goto_75

    :cond_4f
    move v0, v1

    goto :goto_43

    .line 10
    :cond_51
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_72

    const/4 v7, 0x0

    :goto_58
    add-int/lit8 v8, v7, 0x1

    .line 11
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "child"

    .line 12
    invoke-static {v7, v9}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7, p2}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 13
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    :cond_6d
    if-lt v8, v1, :cond_70

    goto :goto_72

    :cond_70
    move v7, v8

    goto :goto_58

    .line 14
    :cond_72
    :goto_72
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_75} :catch_7a
    .catchall {:try_start_c .. :try_end_75} :catchall_76

    :cond_75
    :goto_75
    return v5

    :catchall_76
    move-exception p1

    .line 15
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_7a
    return v3
.end method

.method private final regexMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 14
    :cond_8
    :try_start_8
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    sget-object v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v0, :cond_74

    const-string v3, "rulesForLanguage"

    .line 2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_17

    move-object p1, v2

    goto :goto_25

    .line 3
    :cond_17
    sget-object v3, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    if-eqz v3, :cond_6e

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_25
    if-nez p1, :cond_29

    :goto_27
    move-object p1, v2

    goto :goto_40

    :cond_29
    const-string v0, "rulesForEvent"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_32

    goto :goto_27

    .line 5
    :cond_32
    sget-object v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    if-eqz v0, :cond_68

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_40
    if-nez p1, :cond_43

    goto :goto_5a

    :cond_43
    const-string p2, "positiveRules"

    .line 6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4c

    goto :goto_5a

    .line 7
    :cond_4c
    sget-object p2, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    if-eqz p2, :cond_62

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5a
    if-nez v2, :cond_5d

    goto :goto_61

    .line 8
    :cond_5d
    invoke-direct {p0, v2, p4}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_61
    return v1

    :cond_62
    const-string p1, "textTypeInfo"

    .line 9
    invoke-static {p1}, Lt9/m;->p(Ljava/lang/String;)V

    throw v2

    :cond_68
    const-string p1, "eventInfo"

    .line 10
    invoke-static {p1}, Lt9/m;->p(Ljava/lang/String;)V

    throw v2

    :cond_6e
    const-string p1, "languageInfo"

    .line 11
    invoke-static {p1}, Lt9/m;->p(Ljava/lang/String;)V

    throw v2

    :cond_74
    const-string p1, "rules"

    .line 12
    invoke-static {p1}, Lt9/m;->p(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_8 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception p1

    .line 13
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final sum([F[F)V
    .registers 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 1
    :try_start_8
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1b

    :goto_d
    add-int/lit8 v2, v0, 0x1

    .line 2
    aget v3, p1, v0

    aget v4, p2, v0

    add-float/2addr v3, v4

    aput v3, p1, v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1c

    if-le v2, v1, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v2

    goto :goto_d

    :cond_1b
    :goto_1b
    return-void

    :catchall_1c
    move-exception p1

    .line 3
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 10

    const-string v0, "(this as java.lang.String).toLowerCase()"

    const-string v1, ""

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    :cond_b
    :try_start_b
    const-string v2, "text"

    .line 1
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "view.optString(TEXT_KEY, \"\")"

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "hint"

    .line 2
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "view.optString(HINT_KEY, \"\")"

    invoke-static {v1, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_79

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    const-string v5, " "

    if-eqz v0, :cond_44

    .line 4
    :try_start_3e
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_44
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    if-eqz v3, :cond_54

    .line 6
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    const-string v0, "childviews"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_5d

    return-void

    .line 8
    :cond_5d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_79

    if-lez v0, :cond_78

    :goto_63
    add-int/lit8 v1, v4, 0x1

    .line 9
    :try_start_65
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "currentChildView"

    .line 10
    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, p3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_71} :catch_72
    .catchall {:try_start_65 .. :try_end_71} :catchall_79

    goto :goto_73

    :catch_72
    nop

    :goto_73
    if-lt v1, v0, :cond_76

    goto :goto_78

    :cond_76
    move v4, v1

    goto :goto_63

    :cond_78
    :goto_78
    return-void

    :catchall_79
    move-exception p1

    .line 11
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
