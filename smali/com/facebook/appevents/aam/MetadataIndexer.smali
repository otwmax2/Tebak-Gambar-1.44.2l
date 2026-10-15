###### Class com.facebook.appevents.aam.MetadataIndexer (com.facebook.appevents.aam.MetadataIndexer)
.class public final Lcom/facebook/appevents/aam/MetadataIndexer;
.super Ljava/lang/Object;
.source "MetadataIndexer.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/aam/MetadataIndexer;

.field private static final TAG:Ljava/lang/String;

.field private static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-direct {v0}, Lcom/facebook/appevents/aam/MetadataIndexer;-><init>()V

    sput-object v0, Lcom/facebook/appevents/aam/MetadataIndexer;->INSTANCE:Lcom/facebook/appevents/aam/MetadataIndexer;

    .line 1
    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/aam/MetadataIndexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->enable$lambda-0()V

    return-void
.end method

.method public static final enable()V
    .registers 3

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, La3/a;->o:La3/a;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_17
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception v1

    goto :goto_20

    :catch_17
    move-exception v1

    .line 2
    :try_start_18
    sget-object v2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    sget-object v2, Lcom/facebook/appevents/aam/MetadataIndexer;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    :goto_1f
    return-void

    .line 3
    :goto_20
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static final enable$lambda-0()V
    .registers 3

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/facebook/internal/AttributionIdentifiers;->Companion:Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-virtual {v2, v1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->isTrackingLimited(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3
    sget-object v1, Lcom/facebook/appevents/aam/MetadataIndexer;->INSTANCE:Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-direct {v1}, Lcom/facebook/appevents/aam/MetadataIndexer;->updateRules()V

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/facebook/appevents/aam/MetadataIndexer;->enabled:Z
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "activity"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_26

    .line 1
    :try_start_e
    sget-boolean v1, Lcom/facebook/appevents/aam/MetadataIndexer;->enabled:Z

    if-eqz v1, :cond_25

    sget-object v1, Lcom/facebook/appevents/aam/MetadataRule;->Companion:Lcom/facebook/appevents/aam/MetadataRule$Companion;

    invoke-virtual {v1}, Lcom/facebook/appevents/aam/MetadataRule$Companion;->getRules()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_25

    .line 2
    :cond_1f
    sget-object v1, Lcom/facebook/appevents/aam/MetadataViewObserver;->Companion:Lcom/facebook/appevents/aam/MetadataViewObserver$Companion;

    invoke-virtual {v1, p0}, Lcom/facebook/appevents/aam/MetadataViewObserver$Companion;->startTrackingActivity(Landroid/app/Activity;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_25
    .catchall {:try_start_e .. :try_end_24} :catchall_26

    nop

    :catch_25
    :cond_25
    :goto_25
    return-void

    :catchall_26
    move-exception p0

    .line 3
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final updateRules()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 2
    :cond_17
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getRawAamRules()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    .line 3
    :cond_1e
    sget-object v1, Lcom/facebook/appevents/aam/MetadataRule;->Companion:Lcom/facebook/appevents/aam/MetadataRule$Companion;

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/aam/MetadataRule$Companion;->updateRules(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    .line 4
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

###### Class a3.a (a3.a)
.class public final synthetic La3/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic o:La3/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, La3/a;

    invoke-direct {v0}, La3/a;-><init>()V

    sput-object v0, La3/a;->o:La3/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->a()V

    return-void
.end method
