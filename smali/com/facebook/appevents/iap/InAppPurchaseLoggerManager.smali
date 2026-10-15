###### Class com.facebook.appevents.iap.InAppPurchaseLoggerManager (com.facebook.appevents.iap.InAppPurchaseLoggerManager)
.class public final Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;
.super Ljava/lang/Object;
.source "InAppPurchaseLoggerManager.kt"


# static fields
.field private static final CACHE_CLEAR_TIME_LIMIT_SEC:I = 0x93a80

.field public static final INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

.field private static final LAST_CLEARED_TIME:Ljava/lang/String; = "LAST_CLEARED_TIME"

.field private static final LAST_QUERY_PURCHASE_HISTORY_TIME:Ljava/lang/String; = "LAST_QUERY_PURCHASE_HISTORY_TIME"

.field private static final PRODUCT_DETAILS_STORE:Ljava/lang/String; = "com.facebook.internal.iap.PRODUCT_DETAILS"

.field private static final PURCHASE_DETAILS_SET:Ljava/lang/String; = "PURCHASE_DETAILS_SET"

.field private static final PURCHASE_IN_CACHE_INTERVAL:I = 0x15180

.field private static final PURCHASE_TIME:Ljava/lang/String; = "purchaseTime"

.field private static final cachedPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final cachedPurchaseSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    invoke-direct {v0}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseSet:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eligibleQueryPurchaseHistory()Z
    .registers 12

    const-string v0, "LAST_QUERY_PURCHASE_HISTORY_TIME"

    const-class v1, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return v3

    .line 1
    :cond_c
    :try_start_c
    sget-object v2, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    invoke-direct {v2}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->readPurchaseCache()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 3
    sget-object v2, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->sharedPreferences:Landroid/content/SharedPreferences;
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_4d

    const/4 v6, 0x0

    const-string v7, "sharedPreferences"

    if-eqz v2, :cond_49

    const-wide/16 v8, 0x0

    :try_start_21
    invoke-interface {v2, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-eqz v2, :cond_34

    sub-long v8, v4, v10

    const v2, 0x15180

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-gez v2, :cond_34

    return v3

    .line 4
    :cond_34
    sget-object v2, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_45

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :cond_45
    invoke-static {v7}, Lt9/m;->p(Ljava/lang/String;)V

    throw v6

    .line 5
    :cond_49
    invoke-static {v7}, Lt9/m;->p(Ljava/lang/String;)V

    throw v6
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    .line 6
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v3
.end method

.method public static final filterPurchaseLogging(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "purchaseDetailsMap"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "skuDetailsMap"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;

    invoke-direct {v1}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->readPurchaseCache()V

    .line 2
    invoke-virtual {v1, p0}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cacheDeDupPurchase$facebook_core_release(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->constructLoggingReadyMap$facebook_core_release(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 3
    invoke-direct {v1, p0}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->logPurchases(Ljava/util/Map;)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception p0

    .line 4
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final logPurchases(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 2
    sget-object v2, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->INSTANCE:Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchase(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_33

    goto :goto_f

    :cond_32
    return-void

    :catchall_33
    move-exception p1

    .line 3
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final readPurchaseCache()V
    .registers 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.SKU_DETAILS"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.facebook.internal.PURCHASE"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "LAST_CLEARED_TIME"

    .line 5
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_3c
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.iap.PRODUCT_DETAILS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getApplicationContext().getSharedPreferences(PRODUCT_DETAILS_STORE, Context.MODE_PRIVATE)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 10
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseSet:Ljava/util/Set;

    if-eqz v0, :cond_a2

    const-string v3, "PURCHASE_DETAILS_SET"

    .line 11
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_63

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    :cond_63
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, ";"

    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lba/g;->b0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 15
    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 16
    :cond_9e
    invoke-virtual {p0}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->clearOutdatedProductInfoInCache$facebook_core_release()V

    return-void

    :cond_a2
    const-string v0, "sharedPreferences"

    .line 17
    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_a9
    .catchall {:try_start_7 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v0

    .line 18
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final cacheDeDupPurchase$facebook_core_release(Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "purchaseToken"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "purchaseDetailsMap"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 2
    invoke-static {p1}, Li9/a0;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_22
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_89

    .line 4
    :try_start_3a
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 5
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    sget-object v7, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 7
    invoke-interface {p1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 8
    :cond_50
    sget-object v6, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseSet:Ljava/util/Set;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_69} :catch_22
    .catchall {:try_start_3a .. :try_end_69} :catchall_89

    goto :goto_22

    .line 9
    :cond_6a
    :try_start_6a
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_83

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PURCHASE_DETAILS_SET"

    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseSet:Ljava/util/Set;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_83
    const-string p1, "sharedPreferences"

    .line 11
    invoke-static {p1}, Lt9/m;->p(Ljava/lang/String;)V

    throw v2
    :try_end_89
    .catchall {:try_start_6a .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p1

    .line 12
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final clearOutdatedProductInfoInCache$facebook_core_release()V
    .registers 15

    const-string v0, "LAST_CLEARED_TIME"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 2
    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->sharedPreferences:Landroid/content/SharedPreferences;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_b2

    const/4 v4, 0x0

    const-string v5, "sharedPreferences"

    if-eqz v3, :cond_ae

    const-wide/16 v6, 0x0

    :try_start_19
    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_36

    .line 3
    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_32

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_ad

    :cond_32
    invoke-static {v5}, Lt9/m;->p(Ljava/lang/String;)V

    throw v4

    :cond_36
    sub-long v6, v1, v8

    const-wide/32 v8, 0x93a80

    cmp-long v3, v6, v8

    if-lez v3, :cond_ad

    .line 4
    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseMap:Ljava/util/Map;

    invoke-static {v3}, Li9/a0;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long v10, v1, v8

    const-wide/32 v12, 0x15180

    cmp-long v6, v10, v12

    if-lez v6, :cond_4d

    .line 6
    sget-object v6, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseSet:Ljava/util/Set;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    sget-object v6, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseMap:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 8
    :cond_91
    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_a9

    .line 9
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PURCHASE_DETAILS_SET"

    .line 10
    sget-object v5, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->cachedPurchaseSet:Ljava/util/Set;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 11
    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_ad

    .line 13
    :cond_a9
    invoke-static {v5}, Lt9/m;->p(Ljava/lang/String;)V

    throw v4

    :cond_ad
    :goto_ad
    return-void

    .line 14
    :cond_ae
    invoke-static {v5}, Lt9/m;->p(Ljava/lang/String;)V

    throw v4
    :try_end_b2
    .catchall {:try_start_19 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v0

    .line 15
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final constructLoggingReadyMap$facebook_core_release(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "purchaseTime"

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    :try_start_c
    const-string v2, "purchaseDetailsMap"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "skuDetailsMap"

    invoke-static {v0, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_2c
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 4
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    if-eqz v9, :cond_2c

    .line 5
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_50
    .catchall {:try_start_c .. :try_end_50} :catchall_7a

    if-eqz v11, :cond_2c

    .line 6
    :try_start_52
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 7
    div-long/2addr v11, v7

    sub-long v11, v5, v11

    const-wide/32 v13, 0x15180

    cmp-long v15, v11, v13

    if-lez v15, :cond_61

    goto :goto_2c

    :cond_61
    if-eqz v10, :cond_2c

    .line 8
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "purchaseDetail.toString()"

    invoke-static {v9, v11}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "skuDetail.toString()"

    invoke-static {v10, v11}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_78} :catch_2c
    .catchall {:try_start_52 .. :try_end_78} :catchall_7a

    goto :goto_2c

    :cond_79
    return-object v2

    :catchall_7a
    move-exception v0

    move-object/from16 v1, p0

    .line 9
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v3
.end method
