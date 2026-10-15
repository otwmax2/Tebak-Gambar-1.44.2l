###### Class com.facebook.FacebookSdk (com.facebook.FacebookSdk)
.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$InitializeCallback;,
        Lcom/facebook/FacebookSdk$GraphRequestCreator;
    }
.end annotation


# static fields
.field public static final ADVERTISER_ID_COLLECTION_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AdvertiserIDCollectionEnabled"

.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final APPLICATION_NAME_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field public static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field public static final AUTO_INIT_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AutoInitEnabled"

.field public static final AUTO_LOG_APP_EVENTS_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AutoLogAppEventsEnabled"

.field public static final CALLBACK_OFFSET_CHANGED_AFTER_INIT:Ljava/lang/String; = "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

.field public static final CALLBACK_OFFSET_NEGATIVE:Ljava/lang/String; = "The callback request code offset can\'t be negative."

.field public static final CALLBACK_OFFSET_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CallbackOffset"

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field public static final CLOUDBRIDGE_SAVED_CREDENTIALS:Ljava/lang/String; = "com.facebook.sdk.CloudBridgeSavedCredentials"

.field public static final CODELESS_DEBUG_LOG_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CodelessDebugLogEnabled"

.field public static final DATA_PROCESSING_OPTIONS_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.DataProcessingOptions"

.field public static final DATA_PROCESSION_OPTIONS:Ljava/lang/String; = "data_processing_options"

.field public static final DATA_PROCESSION_OPTIONS_COUNTRY:Ljava/lang/String; = "data_processing_options_country"

.field public static final DATA_PROCESSION_OPTIONS_STATE:Ljava/lang/String; = "data_processing_options_state"

.field private static final DEFAULT_CALLBACK_REQUEST_CODE_OFFSET:I = 0xface

.field public static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field public static final FB_GG:Ljava/lang/String; = "fb.gg"

.field public static final GAMING:Ljava/lang/String; = "gaming"

.field public static final INSTAGRAM:Ljava/lang/String; = "instagram"

.field public static final INSTAGRAM_COM:Ljava/lang/String; = "instagram.com"

.field public static final INSTANCE:Lcom/facebook/FacebookSdk;

.field private static final LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final MAX_REQUEST_CODE_RANGE:I = 0x64

.field public static final MONITOR_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.MonitorEnabled"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_THEME:Ljava/lang/String; = "com.facebook.sdk.WebDialogTheme"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;

.field public static bypassAppSwitch:Z

.field private static cacheDir:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile codelessDebugLogEnabled:Ljava/lang/Boolean;

.field private static executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static graphApiVersion:Ljava/lang/String;

.field private static graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

.field public static hasCustomTabsPrefetching:Z

.field public static ignoreAppSwitchToLoggedOut:Z

.field private static volatile instagramDomain:Ljava/lang/String;

.field private static volatile isDebugEnabledField:Z

.field private static isFullyInitialized:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/facebook/FacebookSdk;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    .line 1
    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/LoggingBehavior;

    .line 2
    sget-object v1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Li9/g0;->c([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v3, 0x10000

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    const v0, 0xface

    .line 4
    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    sget-object v0, Lcom/facebook/internal/ServerProtocol;->INSTANCE:Lcom/facebook/internal/ServerProtocol;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDefaultAPIVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "instagram.com"

    .line 8
    sput-object v0, Lcom/facebook/FacebookSdk;->instagramDomain:Ljava/lang/String;

    const-string v0, "facebook.com"

    .line 9
    sput-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/facebook/h;->a:Lcom/facebook/h;

    sput-object v0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize$lambda-4(Z)V

    return-void
.end method

.method public static final addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 2

    const-string v0, "behavior"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object p0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-direct {p0}, Lcom/facebook/FacebookSdk;->updateGraphDebugBehavior()V

    .line 4
    sget-object p0, Lh9/t;->a:Lh9/t;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    .line 5
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic b(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize$lambda-7(Z)V

    return-void
.end method

.method public static synthetic c(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize$lambda-8(Z)V

    return-void
.end method

.method public static final clearLoggingBehaviors()V
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sget-object v1, Lh9/t;->a:Lh9/t;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic d(Lcom/facebook/FacebookSdk$InitializeCallback;)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize$lambda-9(Lcom/facebook/FacebookSdk$InitializeCallback;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize$lambda-5(Z)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync$lambda-15(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final fullyInitialize()V
    .registers 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/facebook/FacebookSdk;->isFullyInitialized:Z

    return-void
.end method

.method public static synthetic g(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize$lambda-6(Z)V

    return-void
.end method

.method public static final getAdvertiserIDCollectionEnabled()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAdvertiserIDCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public static final getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    const-string v0, "applicationContext"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final getApplicationId()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    return-object v0

    .line 3
    :cond_a
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getApplicationName()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 1
    :cond_a
    :try_start_a
    sget-object v1, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    if-nez p0, :cond_12

    return-object v2

    .line 2
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_19

    return-object v2

    .line 3
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_4e

    const/16 v3, 0x40

    .line 4
    :try_start_1f
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_23} :catch_4d
    .catchall {:try_start_1f .. :try_end_23} :catchall_4e

    .line 5
    :try_start_23
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_4d

    .line 6
    array-length v1, v1
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_4e

    const/4 v3, 0x0

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_31

    goto :goto_4d

    :cond_31
    :try_start_31
    const-string v1, "SHA-1"

    .line 7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_37} :catch_4d
    .catchall {:try_start_31 .. :try_end_37} :catchall_4e

    .line 8
    :try_start_37
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 9
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v1, 0x9

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_4e

    return-object p0

    :catch_4d
    :cond_4d
    :goto_4d
    return-object v2

    :catchall_4e
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final getAutoInitEnabled()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoInitEnabled()Z

    move-result v0

    return v0
.end method

.method public static final getAutoLogAppEventsEnabled()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result v0

    return v0
.end method

.method public static final getCacheDir()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/facebook/internal/LockOnGetVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0

    :cond_10
    const-string v0, "cacheDir"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final getCallbackRequestCodeOffset()I
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static final getClientToken()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    return-object v0

    .line 3
    :cond_a
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getCodelessDebugLogEnabled()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_f
    return v0
.end method

.method public static final getCodelessSetupEnabled()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->getCodelessSetupEnabled()Z

    move-result v0

    return v0
.end method

.method public static final getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    sget-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_d

    .line 3
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 4
    :cond_d
    sget-object v1, Lh9/t;->a:Lh9/t;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_17

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_23
    move-exception v1

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static final getFacebookDomain()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static final getFacebookGamingDomain()Ljava/lang/String;
    .registers 1

    const-string v0, "fb.gg"

    return-object v0
.end method

.method public static final getGraphApiVersion()Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    sget-object v1, Lt9/b0;->a:Lt9/b0;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getGraphApiVersion: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static final getGraphDomain()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 3
    :goto_e
    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getGraphDomainFromTokenDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstagramDomain()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->instagramDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static final getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "limitEventUsage"

    .line 3
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final getLoggingBehaviors()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "unmodifiableSet(HashSet(loggingBehaviors))"

    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public static final getMonitorEnabled()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->getMonitorEnabled()Z

    move-result v0

    return v0
.end method

.method public static final getOnProgressThreshold()J
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "16.0.0"

    return-object v0
.end method

.method private static final graphRequestCreator$lambda-0(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 5

    .line 1
    sget-object v0, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/GraphRequest$Companion;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Ljava/io/File;
    .registers 1

    invoke-static {}, Lcom/facebook/FacebookSdk;->sdkInitialize$lambda-3()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/FacebookSdk;->graphRequestCreator$lambda-0(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final isDebugEnabled()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isDebugEnabledField:Z

    return v0
.end method

.method public static final isFacebookRequestCode(I)Z
    .registers 2

    .line 1
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_a

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static final declared-synchronized isFullyInitialized()Z
    .registers 2

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-boolean v1, Lcom/facebook/FacebookSdk;->isFullyInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final isInitialized()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static final isLegacyTokenUpgradeSupported()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static final isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .registers 3

    const-string v0, "behavior"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_8
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_19

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 3
    monitor-exit v0

    throw p0
.end method

.method public static final loadDefaultsFromMetadata$facebook_core_release(Landroid/content/Context;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_11} :catch_a3

    const-string v0, "try {\n          context.packageManager.getApplicationInfo(\n              context.packageName, PackageManager.GET_META_DATA)\n        } catch (e: PackageManager.NameNotFoundException) {\n          return\n        }"

    .line 4
    invoke-static {p0, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1b

    return-void

    .line 6
    :cond_1b
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_64

    .line 7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_57

    .line 9
    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "ROOT"

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "fb"

    const/4 v5, 0x2

    invoke-static {v2, v4, v1, v5, v3}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_64

    .line 11
    :cond_54
    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_64

    .line 12
    :cond_57
    instance-of v0, v0, Ljava/lang/Number;

    if-nez v0, :cond_5c

    goto :goto_64

    .line 13
    :cond_5c
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_64
    :goto_64
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v0, :cond_72

    .line 15
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 16
    :cond_72
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v0, :cond_80

    .line 17
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 18
    :cond_80
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    const v2, 0xface

    if-ne v0, v2, :cond_91

    .line 19
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 21
    :cond_91
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_a3

    .line 22
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.facebook.sdk.CodelessDebugLogEnabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    :catch_a3
    :cond_a3
    return-void
.end method

.method private final publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->Companion:Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    const-string v1, "com.facebook.sdk.attributionTracking"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "ping"

    .line 3
    invoke-static {p2, v3}, Lt9/m;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 4
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_77
    .catchall {:try_start_7 .. :try_end_20} :catchall_75

    .line 5
    :try_start_20
    sget-object v8, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->INSTANCE:Lcom/facebook/appevents/internal/AppEventsLoggerUtility;

    .line 6
    sget-object v8, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 7
    sget-object v9, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {v9, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v10

    .line 9
    invoke-static {v8, v0, v9, v10, p1}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_32} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_77
    .catchall {:try_start_20 .. :try_end_32} :catchall_75

    .line 10
    :try_start_32
    sget-object v0, Lt9/b0;->a:Lt9/b0;

    const-string v0, "%s/activities"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object p2, v9, v2

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p2, p1, v2}, Lcom/facebook/FacebookSdk$GraphRequestCreator;->createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    cmp-long p2, v6, v4

    if-nez p2, :cond_7f

    .line 12
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-nez p1, :cond_7f

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7f

    :catch_6c
    move-exception p1

    .line 18
    new-instance p2, Lcom/facebook/FacebookException;

    const-string v0, "An error occurred while publishing install."

    invoke-direct {p2, v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_75} :catch_77
    .catchall {:try_start_32 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    goto :goto_80

    :catch_77
    move-exception p1

    .line 19
    :try_start_78
    sget-object p2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string p2, "Facebook-publish"

    invoke-static {p2, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_75

    :cond_7f
    :goto_7f
    return-void

    .line 20
    :goto_80
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "context"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "applicationId"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/n;

    invoke-direct {v2, p0, p1}, Lcom/facebook/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    sget-object p0, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 4
    sget-object p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-static {}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->isOnDeviceProcessingEnabled()Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "com.facebook.sdk.attributionTracking"

    .line 5
    invoke-static {p1, p0}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->sendInstallEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_3b

    :cond_3a
    return-void

    :catchall_3b
    move-exception p0

    .line 6
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static final publishInstallAsync$lambda-15(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "$applicationId"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 2

    const-string v0, "behavior"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_8
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    :try_start_3
    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 11
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized sdkInitialize(Landroid/content/Context;I)V
    .registers 4

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    :try_start_3
    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 2
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 5

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    :try_start_3
    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    sget v1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-ne p1, v1, :cond_15

    goto :goto_1d

    .line 5
    :cond_15
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    if-ltz p1, :cond_26

    .line 6
    sput p1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 7
    invoke-static {p0, p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2e

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_26
    :try_start_26
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The callback request code offset can\'t be negative."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 7

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    :try_start_3
    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez p1, :cond_13

    goto :goto_16

    .line 13
    :cond_13
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_fd

    .line 14
    :goto_16
    monitor-exit v0

    return-void

    .line 15
    :cond_18
    :try_start_18
    sget-object v2, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 16
    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext.applicationContext"

    invoke-static {v3, v4}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 18
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {v3, p0}, Lcom/facebook/appevents/AppEventsLogger$Companion;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    sget-object p0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz p0, :cond_f7

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->loadDefaultsFromMetadata$facebook_core_release(Landroid/content/Context;)V

    .line 20
    sget-object p0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz p0, :cond_47

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_45

    goto :goto_47

    :cond_45
    const/4 p0, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 p0, 0x1

    :goto_48
    if-nez p0, :cond_ef

    .line 21
    sget-object p0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-eqz p0, :cond_54

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_55

    :cond_54
    const/4 v2, 0x1

    :cond_55
    if-nez v2, :cond_e7

    .line 22
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoInitEnabled()Z

    move-result p0

    if-eqz p0, :cond_63

    .line 24
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 25
    :cond_63
    sget-object p0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    if-eqz p0, :cond_e1

    instance-of p0, p0, Landroid/app/Application;

    if-eqz p0, :cond_87

    .line 26
    sget-object p0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result p0

    if-eqz p0, :cond_87

    .line 27
    sget-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    sget-object p0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    if-eqz p0, :cond_81

    check-cast p0, Landroid/app/Application;

    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_87

    :cond_81
    const-string p0, "applicationContext"

    invoke-static {p0}, Lt9/m;->p(Ljava/lang/String;)V

    throw v3

    .line 28
    :cond_87
    :goto_87
    sget-object p0, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V

    .line 29
    sget-object p0, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 30
    sget-object p0, Lcom/facebook/internal/BoltsMeasurementEventListener;->Companion:Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;

    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_db

    invoke-virtual {p0, v1}, Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 31
    new-instance p0, Lcom/facebook/internal/LockOnGetVariable;

    sget-object v1, Lcom/facebook/p;->a:Lcom/facebook/p;

    invoke-direct {p0, v1}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object p0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 32
    sget-object p0, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v1, Lcom/facebook/i;->a:Lcom/facebook/i;

    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 33
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v1, Lcom/facebook/l;->a:Lcom/facebook/l;

    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 34
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v1, Lcom/facebook/m;->a:Lcom/facebook/m;

    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 35
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v1, Lcom/facebook/j;->a:Lcom/facebook/j;

    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 36
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->BypassAppSwitch:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v1, Lcom/facebook/k;->a:Lcom/facebook/k;

    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 37
    new-instance p0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/facebook/o;

    invoke-direct {v1, p1}, Lcom/facebook/o;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;)V

    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 38
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d9
    .catchall {:try_start_18 .. :try_end_d9} :catchall_fd

    .line 39
    monitor-exit v0

    return-void

    :cond_db
    :try_start_db
    const-string p0, "applicationContext"

    .line 40
    invoke-static {p0}, Lt9/m;->p(Ljava/lang/String;)V

    throw v3

    :cond_e1
    const-string p0, "applicationContext"

    .line 41
    invoke-static {p0}, Lt9/m;->p(Ljava/lang/String;)V

    throw v3

    .line 42
    :cond_e7
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_ef
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f7
    const-string p0, "applicationContext"

    .line 44
    invoke-static {p0}, Lt9/m;->p(Ljava/lang/String;)V

    throw v3
    :try_end_fd
    .catchall {:try_start_db .. :try_end_fd} :catchall_fd

    :catchall_fd
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final sdkInitialize$lambda-3()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "applicationContext"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private static final sdkInitialize$lambda-4(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/internal/instrument/InstrumentManager;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentManager;

    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentManager;->start()V

    :cond_7
    return-void
.end method

.method private static final sdkInitialize$lambda-5(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/appevents/AppEventsManager;->INSTANCE:Lcom/facebook/appevents/AppEventsManager;

    invoke-static {}, Lcom/facebook/appevents/AppEventsManager;->start()V

    :cond_7
    return-void
.end method

.method private static final sdkInitialize$lambda-6(Z)V
    .registers 1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lcom/facebook/FacebookSdk;->hasCustomTabsPrefetching:Z

    :cond_5
    return-void
.end method

.method private static final sdkInitialize$lambda-7(Z)V
    .registers 1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lcom/facebook/FacebookSdk;->ignoreAppSwitchToLoggedOut:Z

    :cond_5
    return-void
.end method

.method private static final sdkInitialize$lambda-8(Z)V
    .registers 1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lcom/facebook/FacebookSdk;->bypassAppSwitch:Z

    :cond_5
    return-void
.end method

.method private static final sdkInitialize$lambda-9(Lcom/facebook/FacebookSdk$InitializeCallback;)Ljava/lang/Void;
    .registers 3

    .line 1
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->loadCurrentAccessToken()Z

    .line 2
    sget-object v0, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/ProfileManager$Companion;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->loadCurrentProfile()Z

    .line 3
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v1

    if-nez v1, :cond_25

    .line 4
    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->fetchProfileForCurrentAccessToken()V

    :cond_25
    if-nez p0, :cond_28

    goto :goto_2b

    .line 5
    :cond_28
    invoke-interface {p0}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V

    .line 6
    :goto_2b
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->logIfAutoAppLinkEnabled()V

    .line 8
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext().applicationContext"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final setAdvertiserIDCollectionEnabled(Z)V
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAdvertiserIDCollectionEnabled(Z)V

    return-void
.end method

.method public static final setApplicationId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "applicationId"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public static final setApplicationName(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public static final setAutoInitEnabled(Z)V
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAutoInitEnabled(Z)V

    if-eqz p0, :cond_a

    .line 2
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    :cond_a
    return-void
.end method

.method public static final setAutoLogAppEventsEnabled(Z)V
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAutoLogAppEventsEnabled(Z)V

    if-eqz p0, :cond_16

    .line 2
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 3
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public static final setCacheDir(Ljava/io/File;)V
    .registers 2

    const-string v0, "cacheDir"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    invoke-direct {v0, p0}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    return-void
.end method

.method public static final setClientToken(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-void
.end method

.method public static final setCodelessDebugLogEnabled(Z)V
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static final setDataProcessingOptions([Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 1
    :try_start_a
    invoke-static {p0, v1, v1}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception p0

    .line 2
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setDataProcessingOptions([Ljava/lang/String;II)V
    .registers 8

    const-string v0, "data_processing_options"

    const-class v1, Lcom/facebook/FacebookSdk;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    :cond_b
    const/4 v2, 0x0

    if-nez p0, :cond_13

    :try_start_e
    new-array p0, v2, [Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_4f

    .line 3
    :cond_13
    :goto_13
    :try_start_13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v4, Lorg/json/JSONArray;

    invoke-static {p0}, Li9/c;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "data_processing_options_country"

    .line 6
    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "data_processing_options_state"

    .line 7
    invoke-virtual {v3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    sget-object p0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    if-eqz p0, :cond_48

    const-string p1, "com.facebook.sdk.DataProcessingOptions"

    .line 9
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 11
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_52

    :cond_48
    const-string p0, "applicationContext"

    .line 13
    invoke-static {p0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_4f} :catch_52
    .catchall {:try_start_13 .. :try_end_4f} :catchall_11

    .line 14
    :goto_4f
    invoke-static {p0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_52
    :goto_52
    return-void
.end method

.method public static final setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    const-string v0, "executor"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    sput-object p0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    sget-object p0, Lh9/t;->a:Lh9/t;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_12
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static final setFacebookDomain(Ljava/lang/String;)V
    .registers 3

    const-string v0, "facebookDomain"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-void
.end method

.method public static final setGraphApiVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "graphApiVersion"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setGraphApiVersion from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    invoke-static {v0, p0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3
    sput-object p0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method public static final setGraphRequestCreator$facebook_core_release(Lcom/facebook/FacebookSdk$GraphRequestCreator;)V
    .registers 2

    const-string v0, "graphRequestCreator"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    return-void
.end method

.method public static final setIsDebugEnabled(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isDebugEnabledField:Z

    return-void
.end method

.method public static final setLegacyTokenUpgradeSupported(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return-void
.end method

.method public static final setLimitEventAndDataUsage(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "limitEventUsage"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final setMonitorEnabled(Z)V
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->INSTANCE:Lcom/facebook/UserSettingsManager;

    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setMonitorEnabled(Z)V

    return-void
.end method

.method public static final setOnProgressThreshold(J)V
    .registers 3

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private final updateGraphDebugBehavior()V
    .registers 4

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2
    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

###### Class com.facebook.FacebookSdk.GraphRequestCreator (com.facebook.FacebookSdk$GraphRequestCreator)
.class public interface abstract Lcom/facebook/FacebookSdk$GraphRequestCreator;
.super Ljava/lang/Object;
.source "FacebookSdk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GraphRequestCreator"
.end annotation


# virtual methods
.method public abstract createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
.end method

###### Class com.facebook.FacebookSdk.InitializeCallback (com.facebook.FacebookSdk$InitializeCallback)
.class public interface abstract Lcom/facebook/FacebookSdk$InitializeCallback;
.super Ljava/lang/Object;
.source "FacebookSdk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitializeCallback"
.end annotation


# virtual methods
.method public abstract onInitialized()V
.end method

###### Class com.facebook.h (com.facebook.h)
.class public final synthetic Lcom/facebook/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/FacebookSdk$GraphRequestCreator;


# static fields
.field public static final synthetic a:Lcom/facebook/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/h;

    invoke-direct {v0}, Lcom/facebook/h;-><init>()V

    sput-object v0, Lcom/facebook/h;->a:Lcom/facebook/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/FacebookSdk;->i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.i (com.facebook.i)
.class public final synthetic Lcom/facebook/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0}, Lcom/facebook/i;-><init>()V

    sput-object v0, Lcom/facebook/i;->a:Lcom/facebook/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->a(Z)V

    return-void
.end method

###### Class com.facebook.j (com.facebook.j)
.class public final synthetic Lcom/facebook/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/j;

    invoke-direct {v0}, Lcom/facebook/j;-><init>()V

    sput-object v0, Lcom/facebook/j;->a:Lcom/facebook/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->b(Z)V

    return-void
.end method

###### Class com.facebook.k (com.facebook.k)
.class public final synthetic Lcom/facebook/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/k;

    invoke-direct {v0}, Lcom/facebook/k;-><init>()V

    sput-object v0, Lcom/facebook/k;->a:Lcom/facebook/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->c(Z)V

    return-void
.end method

###### Class com.facebook.l (com.facebook.l)
.class public final synthetic Lcom/facebook/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/l;

    invoke-direct {v0}, Lcom/facebook/l;-><init>()V

    sput-object v0, Lcom/facebook/l;->a:Lcom/facebook/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->e(Z)V

    return-void
.end method

###### Class com.facebook.m (com.facebook.m)
.class public final synthetic Lcom/facebook/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/m;

    invoke-direct {v0}, Lcom/facebook/m;-><init>()V

    sput-object v0, Lcom/facebook/m;->a:Lcom/facebook/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Z)V

    return-void
.end method

###### Class com.facebook.n (com.facebook.n)
.class public final synthetic Lcom/facebook/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/n;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/n;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/n;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/n;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/FacebookSdk;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.o (com.facebook.o)
.class public final synthetic Lcom/facebook/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/facebook/FacebookSdk$InitializeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/o;->a:Lcom/facebook/FacebookSdk$InitializeCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/o;->a:Lcom/facebook/FacebookSdk$InitializeCallback;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->d(Lcom/facebook/FacebookSdk$InitializeCallback;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.p (com.facebook.p)
.class public final synthetic Lcom/facebook/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lcom/facebook/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/p;

    invoke-direct {v0}, Lcom/facebook/p;-><init>()V

    sput-object v0, Lcom/facebook/p;->a:Lcom/facebook/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/facebook/FacebookSdk;->h()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
