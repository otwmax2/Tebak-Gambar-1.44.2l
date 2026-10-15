###### Class com.facebook.appevents.iap.InAppPurchaseAutoLogger (com.facebook.appevents.iap.InAppPurchaseAutoLogger)
.class public final Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;
.super Ljava/lang/Object;
.source "InAppPurchaseAutoLogger.kt"


# static fields
.field private static final BILLING_CLIENT_PURCHASE_NAME:Ljava/lang/String; = "com.android.billingclient.api.Purchase"

.field public static final INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-direct {v0}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

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

    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->startIapLogging$lambda-0()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->startIapLogging$lambda-1()V

    return-void
.end method

.method private final logPurchase()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    .line 2
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->Companion:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v0}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;->getPurchaseDetailsMap()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;->getSkuDetailsMap()Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->filterPurchaseLogging(Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    invoke-virtual {v0}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;->getPurchaseDetailsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    .line 6
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final startIapLogging(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "context"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseUtils;

    const-string v1, "com.android.billingclient.api.Purchase"

    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    .line 2
    :cond_19
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->Companion:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v1, p0}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;->getOrCreateInstance(Landroid/content/Context;)Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    move-result-object p0

    if-nez p0, :cond_22

    return-void

    .line 3
    :cond_22
    invoke-virtual {v1}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;->isServiceConnected()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->eligibleQueryPurchaseHistory()Z

    move-result v1
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_42

    const-string v2, "inapp"

    if-eqz v1, :cond_3c

    .line 5
    :try_start_36
    sget-object v1, Lcom/facebook/appevents/iap/c;->o:Lcom/facebook/appevents/iap/c;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchaseHistory(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_41

    .line 6
    :cond_3c
    sget-object v1, Lcom/facebook/appevents/iap/d;->o:Lcom/facebook/appevents/iap/d;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchase(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_42

    :cond_41
    :goto_41
    return-void

    :catchall_42
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static final startIapLogging$lambda-0()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-direct {v1}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->logPurchase()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static final startIapLogging$lambda-1()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-direct {v1}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->logPurchase()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.appevents.iap.c (com.facebook.appevents.iap.c)
.class public final synthetic Lcom/facebook/appevents/iap/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic o:Lcom/facebook/appevents/iap/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/iap/c;

    invoke-direct {v0}, Lcom/facebook/appevents/iap/c;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/c;->o:Lcom/facebook/appevents/iap/c;

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

    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->a()V

    return-void
.end method

###### Class com.facebook.appevents.iap.d (com.facebook.appevents.iap.d)
.class public final synthetic Lcom/facebook/appevents/iap/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic o:Lcom/facebook/appevents/iap/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/iap/d;

    invoke-direct {v0}, Lcom/facebook/appevents/iap/d;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/d;->o:Lcom/facebook/appevents/iap/d;

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

    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->b()V

    return-void
.end method
