###### Class com.vungle.warren.Vungle (com.vungle.warren.Vungle)
.class public Lcom/vungle/warren/Vungle;
.super Ljava/lang/Object;
.source "Vungle.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/Vungle$Consent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final _instance:Lcom/vungle/warren/Vungle;

.field private static cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

.field private static isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile isInitialized:Z

.field private static isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private volatile appID:Ljava/lang/String;

.field private final ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/Vungle$Consent;",
            ">;"
        }
    .end annotation
.end field

.field private final consent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/Vungle$Consent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile consentVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gson:Lcom/google/gson/f;

.field private hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private playOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/warren/Vungle;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 2
    const-class v0, Lcom/vungle/warren/Vungle;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/vungle/warren/Vungle$16;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle$16;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->gson:Lcom/google/gson/f;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$002(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/Vungle;->updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getCCPAStatus(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;Z)V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/vungle/warren/Vungle;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/vungle/warren/Vungle;->renderAd(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

.method static synthetic access$2000()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->stopPlaying()V

    return-void
.end method

.method static synthetic access$300()Lcom/vungle/warren/persistence/CacheManager$Listener;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vungle/warren/Vungle;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$402(Lcom/vungle/warren/Vungle;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/Vungle;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/warren/Vungle;->saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getConsent(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getConsentMessageVersion(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static appContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method static canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z
    .registers 3

    .line 12
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 13
    :cond_8
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader;

    .line 14
    invoke-virtual {v0, p0}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method public static canPlayAd(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static canPlayAd(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 3
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_f
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "AdMarkup/PlacementId is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_1d
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 7
    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 8
    const-class v3, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 9
    new-instance v3, Lcom/vungle/warren/persistence/FutureResult;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcom/vungle/warren/Vungle$8;

    invoke-direct {v4, v0, p0, p1}, Lcom/vungle/warren/Vungle$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 11
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, p1}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static clearAdvertisements()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 4
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/Vungle$12;

    invoke-direct {v2, v0}, Lcom/vungle/warren/Vungle$12;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static clearCache()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 4
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/Vungle$11;

    invoke-direct {v2, v0}, Lcom/vungle/warren/Vungle$11;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private configure(Lcom/vungle/warren/InitCallback;Z)V
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "cache_bust"

    const-string v3, "session"

    .line 1
    const-class v4, Lcom/vungle/warren/log/LogManager;

    const-string v5, "crash_report"

    const-class v6, Lcom/vungle/warren/model/Cookie;

    const-string v7, "consentIsImportantToVungle"

    const-string v8, "logging"

    const-string v9, "gdpr"

    const-string v10, "clever_cache"

    const-string v11, "button_deny"

    const-string v12, "button_accept"

    const-string v13, "consent_message_version"

    const-string v14, "consent_message"

    const-string v15, "consent_title"

    move-object/from16 v16, v0

    const-string v0, "is_country_data_protected"

    move-object/from16 v17, v3

    :try_start_26
    iget-object v3, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v3, :cond_483

    .line 2
    invoke-static {v3}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v3

    move-object/from16 v18, v5

    .line 3
    const-class v5, Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v3, v5}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/VungleApiClient;

    move-object/from16 v19, v4

    .line 4
    iget-object v4, v1, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/vungle/warren/VungleApiClient;->s(Ljava/lang/String;)V

    .line 5
    const-class v4, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v4}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/persistence/Repository;

    move-object/from16 v20, v8

    .line 6
    const-class v8, Lcom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v3, v8}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/warren/tasks/JobRunner;

    move-object/from16 v21, v11

    .line 7
    invoke-virtual {v5}, Lcom/vungle/warren/VungleApiClient;->config()Lcom/vungle/warren/network/Response;

    move-result-object v11

    if-nez v11, :cond_69

    .line 8
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 9
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 10
    :cond_69
    invoke-virtual {v11}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v22

    const-wide/16 v23, 0x0

    if-nez v22, :cond_a9

    .line 11
    invoke-virtual {v5, v11}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J

    move-result-wide v3

    cmp-long v0, v3, v23

    if-lez v0, :cond_99

    .line 12
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 13
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 14
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 15
    :cond_99
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 16
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_a9
    move-object/from16 v22, v8

    .line 17
    const-class v8, Lcom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v3, v8}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/warren/persistence/FilePreferences;

    move-object/from16 v25, v12

    const-string v12, "reported"

    move-object/from16 v26, v13

    const/4 v13, 0x0

    .line 18
    invoke-virtual {v8, v12, v13}, Lcom/vungle/warren/persistence/FilePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_cc

    .line 19
    invoke-virtual {v5}, Lcom/vungle/warren/VungleApiClient;->reportNew()Lcom/vungle/warren/network/Call;

    move-result-object v5

    new-instance v12, Lcom/vungle/warren/Vungle$3;

    invoke-direct {v12, v1, v8}, Lcom/vungle/warren/Vungle$3;-><init>(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/persistence/FilePreferences;)V

    invoke-interface {v5, v12}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    .line 20
    :cond_cc
    invoke-virtual {v11}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/o;

    const-string v11, "placements"

    .line 21
    invoke-virtual {v5, v11}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v11

    if-nez v11, :cond_ea

    .line 22
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 23
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 24
    :cond_ea
    invoke-static {v5}, Lcom/vungle/warren/CleverCacheSettings;->fromJson(Lcom/google/gson/o;)Lcom/vungle/warren/CleverCacheSettings;

    move-result-object v12

    .line 25
    const-class v13, Lcom/vungle/warren/downloader/Downloader;

    invoke-virtual {v3, v13}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vungle/warren/downloader/Downloader;

    if-eqz v12, :cond_131

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v8, v10, v2}, Lcom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/vungle/warren/CleverCacheSettings;->a(Ljava/lang/String;)Lcom/vungle/warren/CleverCacheSettings;

    move-result-object v2

    if-eqz v2, :cond_112

    .line 28
    invoke-virtual {v2}, Lcom/vungle/warren/CleverCacheSettings;->getTimestamp()J

    move-result-wide v27

    invoke-virtual {v12}, Lcom/vungle/warren/CleverCacheSettings;->getTimestamp()J

    move-result-wide v29

    cmp-long v2, v27, v29

    if-eqz v2, :cond_110

    goto :goto_112

    :cond_110
    const/4 v2, 0x0

    goto :goto_113

    :cond_112
    :goto_112
    const/4 v2, 0x1

    .line 29
    :goto_113
    invoke-virtual {v12}, Lcom/vungle/warren/CleverCacheSettings;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_11b

    if-eqz v2, :cond_11e

    .line 30
    :cond_11b
    invoke-interface {v13}, Lcom/vungle/warren/downloader/Downloader;->clearCache()V

    .line 31
    :cond_11e
    invoke-virtual {v12}, Lcom/vungle/warren/CleverCacheSettings;->isEnabled()Z

    move-result v2

    invoke-interface {v13, v2}, Lcom/vungle/warren/downloader/Downloader;->setCacheEnabled(Z)V

    .line 32
    invoke-virtual {v12}, Lcom/vungle/warren/CleverCacheSettings;->serializeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v10, v2}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    goto :goto_135

    :cond_131
    const/4 v2, 0x1

    .line 34
    invoke-interface {v13, v2}, Lcom/vungle/warren/downloader/Downloader;->setCacheEnabled(Z)V

    .line 35
    :goto_135
    const-class v2, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/AdLoader;

    .line 36
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v11}, Lcom/google/gson/i;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_146
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/l;

    .line 38
    new-instance v12, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v11}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object v11

    invoke-direct {v12, v11}, Lcom/vungle/warren/model/Placement;-><init>(Lcom/google/gson/o;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_146

    .line 39
    :cond_15f
    invoke-virtual {v4, v8}, Lcom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V

    .line 40
    invoke-virtual {v5, v9}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v8
    :try_end_166
    .catchall {:try_start_26 .. :try_end_166} :catchall_48e

    if-eqz v8, :cond_258

    .line 41
    :try_start_168
    invoke-virtual {v4, v7, v6}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/warren/model/Cookie;
    :try_end_172
    .catchall {:try_start_168 .. :try_end_172} :catchall_47f

    if-nez v8, :cond_190

    .line 42
    :try_start_174
    new-instance v8, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v8, v7}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    const-string v7, "consent_status"

    const-string v10, "unknown"

    .line 43
    invoke-virtual {v8, v7, v10}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "consent_source"

    const-string v10, "no_interaction"

    .line 44
    invoke-virtual {v8, v7, v10}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "timestamp"

    .line 45
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_190
    .catchall {:try_start_174 .. :try_end_190} :catchall_48e

    .line 46
    :cond_190
    :try_start_190
    invoke-virtual {v5, v9}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v7

    .line 47
    invoke-static {v7, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v9
    :try_end_198
    .catchall {:try_start_190 .. :try_end_198} :catchall_47f

    if-eqz v9, :cond_1a6

    :try_start_19a
    invoke-virtual {v7, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/l;->c()Z

    move-result v9
    :try_end_1a2
    .catchall {:try_start_19a .. :try_end_1a2} :catchall_48e

    if-eqz v9, :cond_1a6

    const/4 v9, 0x1

    goto :goto_1a7

    :cond_1a6
    const/4 v9, 0x0

    .line 48
    :goto_1a7
    :try_start_1a7
    invoke-static {v7, v15}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v10
    :try_end_1ab
    .catchall {:try_start_1a7 .. :try_end_1ab} :catchall_47f

    const-string v11, ""

    if-eqz v10, :cond_1b8

    :try_start_1af
    invoke-virtual {v7, v15}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v10
    :try_end_1b7
    .catchall {:try_start_1af .. :try_end_1b7} :catchall_48e

    goto :goto_1b9

    :cond_1b8
    move-object v10, v11

    .line 49
    :goto_1b9
    :try_start_1b9
    invoke-static {v7, v14}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v12
    :try_end_1bd
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_47f

    if-eqz v12, :cond_1c8

    :try_start_1bf
    invoke-virtual {v7, v14}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v12
    :try_end_1c7
    .catchall {:try_start_1bf .. :try_end_1c7} :catchall_48e

    goto :goto_1c9

    :cond_1c8
    move-object v12, v11

    :goto_1c9
    move-object/from16 v13, v26

    .line 50
    :try_start_1cb
    invoke-static {v7, v13}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v23
    :try_end_1cf
    .catchall {:try_start_1cb .. :try_end_1cf} :catchall_47f

    if-eqz v23, :cond_1da

    :try_start_1d1
    invoke-virtual {v7, v13}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v23
    :try_end_1d9
    .catchall {:try_start_1d1 .. :try_end_1d9} :catchall_48e

    goto :goto_1dc

    :cond_1da
    move-object/from16 v23, v11

    :goto_1dc
    move-object/from16 v24, v11

    move-object/from16 v11, v25

    .line 51
    :try_start_1e0
    invoke-static {v7, v11}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v25
    :try_end_1e4
    .catchall {:try_start_1e0 .. :try_end_1e4} :catchall_47f

    if-eqz v25, :cond_1ef

    :try_start_1e6
    invoke-virtual {v7, v11}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v25
    :try_end_1ee
    .catchall {:try_start_1e6 .. :try_end_1ee} :catchall_48e

    goto :goto_1f1

    :cond_1ef
    move-object/from16 v25, v24

    :goto_1f1
    move-object/from16 v1, v21

    .line 52
    :try_start_1f3
    invoke-static {v7, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_202

    invoke-virtual {v7, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v7

    goto :goto_204

    :cond_202
    move-object/from16 v7, v24

    .line 53
    :goto_204
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_213

    const-string v10, "Targeted Ads"

    :cond_213
    invoke-virtual {v8, v15, v10}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21e

    const-string v12, "To receive more relevant ad content based on your interactions with our ads, click \"I Consent\" below. Either way, you will see the same amount of ads."

    :cond_21e
    invoke-virtual {v8, v14, v12}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consent_source"

    .line 56
    invoke-virtual {v8, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "publisher"

    .line 57
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23d

    .line 58
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_238

    move-object/from16 v0, v24

    goto :goto_23a

    :cond_238
    move-object/from16 v0, v23

    :goto_23a
    invoke-virtual {v8, v13, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_23d
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_245

    const-string v25, "I Consent"

    :cond_245
    move-object/from16 v0, v25

    invoke-virtual {v8, v11, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_252

    const-string v7, "I Do Not Consent"

    :cond_252
    invoke-virtual {v8, v1, v7}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v4, v8}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    :cond_258
    move-object/from16 v0, v20

    .line 62
    invoke-virtual {v5, v0}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v1
    :try_end_25e
    .catchall {:try_start_1f3 .. :try_end_25e} :catchall_47f

    const-string v7, "enabled"

    if-eqz v1, :cond_282

    move-object/from16 v1, v19

    .line 63
    :try_start_264
    invoke-virtual {v3, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/warren/log/LogManager;

    .line 64
    invoke-virtual {v5, v0}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v0

    .line 65
    invoke-static {v0, v7}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27d

    invoke-virtual {v0, v7}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->c()Z

    move-result v0

    goto :goto_27e

    :cond_27d
    const/4 v0, 0x0

    .line 66
    :goto_27e
    invoke-virtual {v8, v0}, Lcom/vungle/warren/log/LogManager;->setLoggingEnabled(Z)V

    goto :goto_284

    :cond_282
    move-object/from16 v1, v19

    :goto_284
    move-object/from16 v0, v18

    .line 67
    invoke-virtual {v5, v0}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d2

    .line 68
    invoke-virtual {v3, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/log/LogManager;

    .line 69
    invoke-virtual {v5, v0}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v0

    .line 70
    invoke-static {v0, v7}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a5

    invoke-virtual {v0, v7}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/l;->c()Z

    move-result v8

    goto :goto_2a6

    :cond_2a5
    const/4 v8, 0x0

    :goto_2a6
    const-string v9, "collect_filter"

    .line 71
    invoke-static {v0, v9}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b9

    const-string v9, "collect_filter"

    invoke-virtual {v0, v9}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v9

    goto :goto_2bb

    :cond_2b9
    sget-object v9, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    :goto_2bb
    const-string v10, "max_send_amount"

    .line 72
    invoke-static {v0, v10}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2ce

    const-string v10, "max_send_amount"

    invoke-virtual {v0, v10}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->j()I

    move-result v0

    goto :goto_2cf

    :cond_2ce
    const/4 v0, 0x5

    .line 73
    :goto_2cf
    invoke-virtual {v1, v8, v9, v0}, Lcom/vungle/warren/log/LogManager;->updateCrashReportConfig(ZLjava/lang/String;I)V

    :cond_2d2
    const/16 v0, 0x384

    move-object/from16 v1, v17

    .line 74
    invoke-virtual {v5, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f2

    .line 75
    invoke-virtual {v5, v1}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v1

    const-string v8, "timeout"

    .line 76
    invoke-virtual {v1, v8}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f2

    const-string v0, "timeout"

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->j()I

    move-result v0

    :cond_2f2
    move-object/from16 v1, v16

    .line 78
    invoke-virtual {v5, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_325

    .line 79
    invoke-virtual {v5, v1}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v7}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_30d

    .line 81
    invoke-virtual {v1, v7}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/l;->c()Z

    move-result v8

    goto :goto_30e

    :cond_30d
    const/4 v8, 0x0

    :goto_30e
    const-string v9, "interval"

    .line 82
    invoke-virtual {v1, v9}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_323

    const-string v9, "interval"

    .line 83
    invoke-virtual {v1, v9}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->j()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_327

    :cond_323
    const/4 v1, 0x0

    goto :goto_327

    :cond_325
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_327
    const-string v9, "ad_load_optimization"

    .line 84
    invoke-virtual {v5, v9}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v9

    const/4 v10, 0x0

    .line 85
    invoke-static {v9, v7, v10}, Lcom/vungle/warren/model/JsonUtil;->getAsBoolean(Lcom/google/gson/l;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/vungle/warren/AdLoader;->d0(Z)V

    const-string v9, "configSettings"

    .line 86
    invoke-virtual {v4, v9, v6}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/model/Cookie;

    if-nez v6, :cond_34a

    .line 87
    new-instance v6, Lcom/vungle/warren/model/Cookie;

    const-string v9, "configSettings"

    invoke-direct {v6, v9}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_34a
    const-string v9, "ri"

    .line 88
    invoke-virtual {v5, v9}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_369

    const-string v9, "ri"

    .line 89
    invoke-virtual {v5, v9}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/l;->c()Z

    move-result v7

    const-string v9, "isReportIncentivizedEnabled"

    .line 90
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_369
    invoke-virtual {v4, v6}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    const-string v6, "config"

    .line 92
    invoke-virtual {v5, v6}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_396

    const-string v6, "config"

    .line 93
    invoke-virtual {v5, v6}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v6

    const-string v7, "refresh_time"

    invoke-virtual {v6, v7}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/l;->n()J

    move-result-wide v6
    :try_end_384
    .catchall {:try_start_264 .. :try_end_384} :catchall_47f

    move-object/from16 v9, p0

    .line 94
    :try_start_386
    iget-object v10, v9, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v10}, Lcom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v6

    move-object/from16 v7, v22

    invoke-interface {v7, v6}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V
    :try_end_395
    .catchall {:try_start_386 .. :try_end_395} :catchall_48c

    goto :goto_39a

    :cond_396
    move-object/from16 v9, p0

    move-object/from16 v7, v22

    .line 95
    :goto_39a
    :try_start_39a
    const-class v6, Lcom/vungle/warren/VisionController;

    invoke-virtual {v3, v6}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/VisionController;

    const-string v10, "vision"

    invoke-static {v5, v10}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3bb

    .line 96
    iget-object v10, v9, Lcom/vungle/warren/Vungle;->gson:Lcom/google/gson/f;

    const-string v11, "vision"

    invoke-virtual {v5, v11}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v5

    const-class v11, Lcom/vungle/warren/vision/VisionConfig;

    invoke-virtual {v10, v5, v11}, Lcom/google/gson/f;->g(Lcom/google/gson/l;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/vision/VisionConfig;

    goto :goto_3c0

    :cond_3bb
    new-instance v5, Lcom/vungle/warren/vision/VisionConfig;

    invoke-direct {v5}, Lcom/vungle/warren/vision/VisionConfig;-><init>()V

    .line 97
    :goto_3c0
    invoke-virtual {v6, v5}, Lcom/vungle/warren/VisionController;->e(Lcom/vungle/warren/vision/VisionConfig;)V
    :try_end_3c3
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_39a .. :try_end_3c3} :catch_3c4
    .catchall {:try_start_39a .. :try_end_3c3} :catchall_48c

    goto :goto_3cb

    .line 98
    :catch_3c4
    :try_start_3c4
    sget-object v5, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v6, "not able to apply vision data config"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3cb
    const/4 v5, 0x1

    .line 99
    sput-boolean v5, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 100
    invoke-interface/range {p1 .. p1}, Lcom/vungle/warren/InitCallback;->onSuccess()V

    const-string v6, "Vungle#init"

    const-string v10, "onSuccess"

    .line 101
    invoke-static {v6, v10}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v6, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    new-instance v6, Lcom/vungle/warren/SessionData;

    invoke-direct {v6}, Lcom/vungle/warren/SessionData;-><init>()V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/vungle/warren/SessionData;->setInitTimeStamp(J)V

    int-to-long v10, v0

    .line 105
    invoke-virtual {v6, v10, v11}, Lcom/vungle/warren/SessionData;->setTimeout(J)V

    .line 106
    iget-object v0, v9, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    const-class v10, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v0, v10}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 107
    iget-object v0, v9, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    const-class v10, Lcom/vungle/warren/utility/AppSession;

    invoke-virtual {v0, v10}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/AppSession;

    invoke-virtual {v0, v6}, Lcom/vungle/warren/utility/AppSession;->setSessionData(Lcom/vungle/warren/SessionData;)Lcom/vungle/warren/utility/AppSession;

    move-result-object v0

    new-instance v6, Lcom/vungle/warren/Vungle$4;

    invoke-direct {v6, v9}, Lcom/vungle/warren/Vungle$4;-><init>(Lcom/vungle/warren/Vungle;)V

    .line 108
    invoke-virtual {v0, v6}, Lcom/vungle/warren/utility/AppSession;->setSessionCallback(Lcom/vungle/warren/utility/AppSession$SessionCallback;)Lcom/vungle/warren/utility/AppSession;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/vungle/warren/utility/AppSession;->observe()V

    .line 110
    invoke-virtual {v4}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 111
    invoke-static {}, Lcom/vungle/warren/tasks/CleanupJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    if-eqz v0, :cond_45a

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    new-instance v0, Lcom/vungle/warren/Vungle$5;

    invoke-direct {v0, v9}, Lcom/vungle/warren/Vungle$5;-><init>(Lcom/vungle/warren/Vungle;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v6, "starting jobs for autocached advs"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-class v0, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v3, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 116
    new-instance v6, Lcom/vungle/warren/Vungle$6;

    invoke-direct {v6, v9, v4, v2}, Lcom/vungle/warren/Vungle$6;-><init>(Lcom/vungle/warren/Vungle;Ljava/util/List;Lcom/vungle/warren/AdLoader;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_45a
    if-eqz v8, :cond_46b

    .line 117
    const-class v0, Lcom/vungle/warren/CacheBustManager;

    invoke-virtual {v3, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/CacheBustManager;

    int-to-long v1, v1

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/CacheBustManager;->setRefreshRate(J)V

    .line 119
    invoke-virtual {v0}, Lcom/vungle/warren/CacheBustManager;->startBust()V

    :cond_46b
    if-nez p2, :cond_46f

    const/4 v3, 0x1

    goto :goto_470

    :cond_46f
    const/4 v3, 0x0

    .line 120
    :goto_470
    invoke-static {v3}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 121
    invoke-static {}, Lcom/vungle/warren/tasks/SendLogsJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    goto :goto_4df

    :catchall_47f
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_490

    :cond_483
    move-object v9, v1

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48c
    .catchall {:try_start_3c4 .. :try_end_48c} :catchall_48c

    :catchall_48c
    move-exception v0

    goto :goto_490

    :catchall_48e
    move-exception v0

    move-object v9, v1

    :goto_490
    const/4 v1, 0x0

    .line 123
    sput-boolean v1, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 124
    sget-object v2, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    sget-object v1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    instance-of v1, v0, Lcom/vungle/warren/network/HttpException;

    if-eqz v1, :cond_4b1

    .line 127
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_4df

    :cond_4b1
    move-object/from16 v1, p1

    .line 128
    instance-of v2, v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-eqz v2, :cond_4c2

    .line 129
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_4df

    .line 130
    :cond_4c2
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_4d5

    instance-of v0, v0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_4cb

    goto :goto_4d5

    .line 131
    :cond_4cb
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_4df

    .line 132
    :cond_4d5
    :goto_4d5
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    :goto_4df
    return-void
.end method

.method protected static deInit()V
    .registers 6

    .line 1
    const-class v0, Lcom/vungle/warren/AdLoader;

    const-class v1, Lcom/vungle/warren/downloader/Downloader;

    const-class v2, Lcom/vungle/warren/persistence/CacheManager;

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v4, v3, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v4, :cond_44

    .line 2
    invoke-static {v4}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v2}, Lcom/vungle/warren/ServiceLocator;->j(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 4
    invoke-virtual {v4, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/persistence/CacheManager;

    sget-object v5, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    invoke-virtual {v2, v5}, Lcom/vungle/warren/persistence/CacheManager;->removeListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 5
    :cond_21
    invoke-virtual {v4, v1}, Lcom/vungle/warren/ServiceLocator;->j(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 6
    invoke-virtual {v4, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v1}, Lcom/vungle/warren/downloader/Downloader;->cancelAll()V

    .line 7
    :cond_30
    invoke-virtual {v4, v0}, Lcom/vungle/warren/ServiceLocator;->j(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 8
    invoke-virtual {v4, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lcom/vungle/warren/AdLoader;->clear()V

    .line 9
    :cond_3f
    iget-object v0, v3, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    :cond_44
    invoke-static {}, Lcom/vungle/warren/ServiceLocator;->e()V

    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 12
    sget-object v1, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    sget-object v1, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static getAppContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getAvailableBidTokens(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/vungle/warren/Vungle;->getAvailableBidTokensBySize(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableBidTokensBySize(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_b

    .line 1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_b
    if-gtz p1, :cond_10

    const p1, 0x7ffffffe

    .line 2
    :cond_10
    invoke-static {p0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 3
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    .line 4
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 5
    new-instance v2, Lcom/vungle/warren/persistence/FutureResult;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/vungle/warren/Vungle$15;

    invoke-direct {v3, p0, p1}, Lcom/vungle/warren/Vungle$15;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 7
    invoke-interface {v0}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1, v0}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getAvailableSizeForHBT(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    sub-int/2addr p0, p1

    const-string p1, ":"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x4

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p0

    double-to-int p0, v0

    int-to-double p0, p0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x4

    mul-long p0, p0, v0

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static getCCPAStatus()Lcom/vungle/warren/Vungle$Consent;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/Vungle$Consent;

    return-object v0
.end method

.method private static getCCPAStatus(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "ccpa_status"

    .line 2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "opted_out"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_17

    :cond_15
    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    :goto_17
    return-object p0
.end method

.method private static getConsent(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "consent_status"

    .line 1
    invoke-virtual {p0, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "opted_in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_17

    :cond_15
    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    :goto_17
    return-object p0
.end method

.method public static getConsentMessageVersion()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getConsentMessageVersion(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "consent_message_version"

    .line 2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConsentStatus()Lcom/vungle/warren/Vungle$Consent;
    .registers 5

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 3
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 4
    const-class v3, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    const-class v3, Lcom/vungle/warren/model/Cookie;

    const-string v4, "consentIsImportantToVungle"

    .line 5
    invoke-virtual {v1, v4, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-interface {v2}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    const/4 v2, 0x0

    if-nez v1, :cond_3e

    return-object v2

    :cond_3e
    const-string v3, "consent_status"

    .line 6
    invoke-virtual {v1, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_90

    goto :goto_70

    :sswitch_50
    const-string v4, "opted_out"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_70

    :cond_59
    const/4 v3, 0x2

    goto :goto_70

    :sswitch_5b
    const-string v4, "opted_out_by_timeout"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_70

    :cond_64
    const/4 v3, 0x1

    goto :goto_70

    :sswitch_66
    const-string v4, "opted_in"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v3, 0x0

    :goto_70
    packed-switch v3, :pswitch_data_9e

    return-object v2

    .line 8
    :pswitch_74
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v1

    .line 9
    :pswitch_7c
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_84
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/Vungle$Consent;

    return-object v0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x4f34a0e -> :sswitch_66
        0x495b4057 -> :sswitch_5b
        0x668a2021 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_74
        :pswitch_74
    .end packed-switch
.end method

.method public static getNativeAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/vungle/warren/Vungle;->getNativeAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;

    move-result-object p0

    return-object p0
.end method

.method public static getNativeAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;
    .registers 5

    if-nez p2, :cond_7

    .line 2
    new-instance p2, Lcom/vungle/warren/AdConfig;

    invoke-direct {p2}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 3
    :cond_7
    invoke-virtual {p2}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    invoke-static {p1}, Lcom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;

    move-result-object p0

    return-object p0

    :cond_1a
    if-eqz p3, :cond_2d

    .line 5
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p2, "Please use Banners.getBanner(... ) to retrieve Banner Ad"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x1d

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p3, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method static getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v12, p3

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    const/4 v13, 0x0

    if-nez v2, :cond_1d

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "Vungle is not initialized, returned VungleNativeAd = null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v12, v0}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-object v13

    .line 4
    :cond_1d
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 5
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v12, v0}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-object v13

    .line 6
    :cond_2e
    iget-object v2, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    .line 7
    const-class v3, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/vungle/warren/AdLoader;

    .line 8
    new-instance v15, Lcom/vungle/warren/AdRequest;

    move-object/from16 v3, p1

    invoke-direct {v15, v1, v3}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;)V

    .line 9
    invoke-virtual {v7, v15}, Lcom/vungle/warren/AdLoader;->isLoading(Lcom/vungle/warren/AdRequest;)Z

    move-result v3

    .line 10
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c9

    if-eqz v3, :cond_59

    goto :goto_c9

    .line 11
    :cond_59
    :try_start_59
    new-instance v20, Lcom/vungle/warren/ui/view/VungleNativeView;

    iget-object v3, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-class v3, Lcom/vungle/warren/PresentationFactory;

    .line 13
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/vungle/warren/PresentationFactory;

    new-instance v19, Lcom/vungle/warren/AdEventListener;

    iget-object v4, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const-class v0, Lcom/vungle/warren/persistence/Repository;

    .line 14
    invoke-virtual {v2, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vungle/warren/persistence/Repository;

    const-class v0, Lcom/vungle/warren/tasks/JobRunner;

    .line 15
    invoke-virtual {v2, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vungle/warren/tasks/JobRunner;

    const-class v0, Lcom/vungle/warren/VisionController;

    .line 16
    invoke-virtual {v2, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vungle/warren/VisionController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, v19

    move-object v3, v15

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v11}, Lcom/vungle/warren/AdEventListener;-><init>(Lcom/vungle/warren/AdRequest;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    move-object/from16 v14, v20

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, p2

    invoke-direct/range {v14 .. v19}, Lcom/vungle/warren/ui/view/VungleNativeView;-><init>(Landroid/content/Context;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PresentationFactory;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a0} :catch_a1

    return-object v20

    :catch_a1
    move-exception v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native ad fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Vungle#playAd"

    invoke-static {v2, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_c8

    .line 18
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v12, v1, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_c8
    return-object v13

    :cond_c9
    :goto_c9
    move-object v2, v15

    .line 19
    sget-object v4, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playing or Loading operation ongoing. Playing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    .line 20
    invoke-virtual {v2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Loading: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v12, v0}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-object v13
.end method

.method static getValidAdvertisementModels(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized return empty placements list"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_12
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    .line 6
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/TimeoutProvider;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p0, v2}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p0

    invoke-interface {v0}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_41

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_41
    return-object p0
.end method

.method static getValidPlacementModels()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placements list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_12
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    .line 6
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 7
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-interface {v0}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_40

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_40
    return-object v0
.end method

.method public static getValidPlacements()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placements list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_12
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    .line 6
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 7
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/Repository;->getValidPlacementIds()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-interface {v0}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_40

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_40
    return-object v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {v0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Vungle#init"

    const-string v1, "init request"

    .line 3
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_ec

    const/4 v1, 0x6

    if-nez p1, :cond_15

    .line 4
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 5
    :cond_15
    invoke-static {p1}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    .line 6
    const-class v3, Lcom/vungle/warren/utility/platform/Platform;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/utility/platform/Platform;

    .line 7
    invoke-interface {v3}, Lcom/vungle/warren/utility/platform/Platform;->isAtLeastMinimumSDK()Z

    move-result v3

    if-nez v3, :cond_39

    .line 8
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "SDK is supported only for API versions 21 and above"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    const/16 p1, 0x23

    invoke-direct {p0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 10
    :cond_39
    invoke-static {p1}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v3

    const-class v4, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v3, v4}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/RuntimeValues;

    .line 11
    iget-object v4, v3, Lcom/vungle/warren/RuntimeValues;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    const-class p3, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v2, p3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/utility/Executors;

    .line 13
    instance-of v4, p2, Lcom/vungle/warren/InitCallbackWrapper;

    if-eqz v4, :cond_57

    goto :goto_61

    .line 14
    :cond_57
    new-instance v4, Lcom/vungle/warren/InitCallbackWrapper;

    invoke-interface {p3}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/vungle/warren/InitCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/InitCallback;)V

    move-object p2, v4

    :goto_61
    if-eqz p0, :cond_e3

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6b

    goto/16 :goto_e3

    .line 16
    :cond_6b
    instance-of v1, p1, Landroid/app/Application;

    if-nez v1, :cond_79

    .line 17
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 18
    :cond_79
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 19
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "init already complete"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-interface {p2}, Lcom/vungle/warren/InitCallback;->onSuccess()V

    .line 21
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_8d
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 23
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "init ongoing"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p2, p0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    :cond_a8
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 25
    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "android.permission.INTERNET"

    .line 26
    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b9

    goto :goto_cb

    .line 27
    :cond_b9
    iget-object v0, v3, Lcom/vungle/warren/RuntimeValues;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    invoke-interface {p3}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/vungle/warren/Vungle$1;

    invoke-direct {p3, p0, v3, v2, p1}, Lcom/vungle/warren/Vungle$1;-><init>(Ljava/lang/String;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/ServiceLocator;Landroid/content/Context;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 29
    :cond_cb
    :goto_cb
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Network permissions not granted"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    const/16 p1, 0x22

    invoke-direct {p0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p2, p0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 31
    sget-object p0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 32
    :cond_e3
    :goto_e3
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 33
    :cond_ec
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A valid InitCallback required to ensure API calls are being made after initialize is successful"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/vungle/warren/InitCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {p0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    return-void
.end method

.method public static isInitialized()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static loadAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method public static loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method public static loadAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 6

    const-string v0, "Vungle#loadAd"

    const-string v1, "loadAd API call invoked"

    .line 3
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p2, "Vungle is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, p1}, Lcom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    :cond_1f
    if-eqz p2, :cond_36

    .line 7
    invoke-virtual {p2}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 8
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x1d

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, p1}, Lcom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 9
    :cond_36
    invoke-static {p1}, Lcom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/vungle/warren/Vungle;->loadAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method static loadAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p2, "Vungle is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, p1}, Lcom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 4
    :cond_18
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/vungle/warren/LoadAdCallbackWrapper;

    const-class v2, Lcom/vungle/warren/utility/Executors;

    .line 6
    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 7
    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/vungle/warren/LoadAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/LoadAdCallback;)V

    .line 8
    const-class p3, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, p3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/AdLoader;

    new-instance v0, Lcom/vungle/warren/AdRequest;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;)V

    if-nez p2, :cond_45

    new-instance p2, Lcom/vungle/warren/AdConfig;

    invoke-direct {p2}, Lcom/vungle/warren/AdConfig;-><init>()V

    :cond_45
    invoke-virtual {p3, v0, p2, v1}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method private static onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 1
    invoke-interface {p0, p1}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    :cond_5
    if-eqz p1, :cond_29

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_1c
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_24
    const-string p1, "Vungle#init"

    .line 4
    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private static onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_5
    if-eqz p2, :cond_29

    .line 2
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_1c
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_24
    const-string p1, "Vungle#loadAd"

    .line 4
    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private static onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_5
    if-eqz p2, :cond_29

    .line 2
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_1c
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_24
    const-string p1, "Vungle#playAd"

    .line 4
    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    return-void
.end method

.method public static playAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
    .registers 15

    const-string v0, "Vungle#playAd"

    const-string v1, "playAd call invoked"

    .line 2
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_21

    .line 4
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p2, "Locator is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_20

    .line 5
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, p1}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    :cond_20
    return-void

    .line 6
    :cond_21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 7
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, p1}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 8
    :cond_32
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 9
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vungle/warren/utility/Executors;

    .line 10
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vungle/warren/persistence/Repository;

    .line 11
    const-class v1, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vungle/warren/AdLoader;

    .line 12
    const-class v1, Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vungle/warren/VungleApiClient;

    .line 13
    new-instance v6, Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-interface {v10}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v6, v0, p3}, Lcom/vungle/warren/PlayAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/PlayAdCallback;)V

    .line 14
    invoke-interface {v10}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lcom/vungle/warren/Vungle$9;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/vungle/warren/Vungle$9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/utility/Executors;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static reConfigure()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v1, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 3
    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 4
    const-class v3, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    .line 5
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 6
    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/vungle/warren/Vungle$2;

    invoke-direct {v2, v1}, Lcom/vungle/warren/Vungle$2;-><init>(Lcom/vungle/warren/RuntimeValues;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3d

    .line 7
    :cond_2e
    iget-object v2, v0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/InitCallback;

    invoke-static {v2, v0, v1}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V

    :goto_3d
    return-void
.end method

.method private static declared-synchronized renderAd(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 18

    const-class v1, Lcom/vungle/warren/Vungle;

    monitor-enter v1

    .line 1
    :try_start_3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "Sdk is not initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5e

    .line 3
    monitor-exit v1

    return-void

    .line 4
    :cond_12
    :try_start_12
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    .line 5
    new-instance v13, Lcom/vungle/warren/Vungle$10;

    iget-object v5, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const-class v3, Lcom/vungle/warren/persistence/Repository;

    .line 6
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/vungle/warren/persistence/Repository;

    const-class v3, Lcom/vungle/warren/AdLoader;

    .line 7
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/vungle/warren/AdLoader;

    const-class v3, Lcom/vungle/warren/tasks/JobRunner;

    .line 8
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/vungle/warren/tasks/JobRunner;

    const-class v3, Lcom/vungle/warren/VisionController;

    .line 9
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vungle/warren/VisionController;

    move-object v3, v13

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lcom/vungle/warren/Vungle$10;-><init>(Lcom/vungle/warren/AdRequest;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    .line 10
    invoke-static {v13}, Lcom/vungle/warren/AdActivity;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 11
    iget-object v2, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    move-object v3, p0

    invoke-static {v2, p0}, Lcom/vungle/warren/AdActivity;->createIntent(Landroid/content/Context;Lcom/vungle/warren/AdRequest;)Landroid/content/Intent;

    move-result-object v2

    .line 12
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/vungle/warren/utility/ActivityManager;->startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    :try_end_5c
    .catchall {:try_start_12 .. :try_end_5c} :catchall_5e

    .line 13
    monitor-exit v1

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-class v0, Lcom/vungle/warren/model/Cookie;

    new-instance v1, Lcom/vungle/warren/Vungle$13;

    invoke-direct {v1, p1, p2, p0}, Lcom/vungle/warren/Vungle$13;-><init>(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;Lcom/vungle/warren/persistence/Repository;)V

    const-string p1, "consentIsImportantToVungle"

    invoke-virtual {p0, p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    return-void
.end method

.method public static setHeaderBiddingCallback(Lcom/vungle/warren/HeaderBiddingCallback;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 3
    const-class v1, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    .line 4
    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    const-class v3, Lcom/vungle/warren/utility/Executors;

    .line 5
    invoke-virtual {v0, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/HeaderBiddingCallback;)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 2
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Vungle is not initialized, context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 4
    const-class v0, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/vungle/warren/Vungle$7;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/Vungle$7;-><init>(Lcom/vungle/warren/ServiceLocator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static stopPlaying()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v1, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "AdvertisementBus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "command"

    const-string v3, "stopAll"

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lu0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static updateCCPAStatus(Lcom/vungle/warren/Vungle$Consent;)V
    .registers 3

    if-nez p0, :cond_a

    .line 1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Unable to update CCPA status, Invalid input parameter."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_a
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_32

    .line 4
    :cond_20
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 6
    invoke-static {v0, p0}, Lcom/vungle/warren/Vungle;->updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V

    return-void

    .line 7
    :cond_32
    :goto_32
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V
    .registers 4

    .line 8
    const-class v0, Lcom/vungle/warren/model/Cookie;

    new-instance v1, Lcom/vungle/warren/Vungle$14;

    invoke-direct {v1, p1, p0}, Lcom/vungle/warren/Vungle$14;-><init>(Lcom/vungle/warren/Vungle$Consent;Lcom/vungle/warren/persistence/Repository;)V

    const-string p1, "ccpaIsImportantToVungle"

    invoke-virtual {p0, p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    return-void
.end method

.method public static updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_a

    .line 1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Cannot set consent with a null consent, please check your code"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_a
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iput-object p1, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_3d

    sget-object p0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 5
    iget-object p0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object p0

    .line 6
    const-class p1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/persistence/Repository;

    .line 7
    iget-object p1, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/Vungle$Consent;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/vungle/warren/Vungle;->saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_44

    .line 8
    :cond_3d
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Vungle is not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass1 (com.vungle.warren.Vungle$1)
.class Lcom/vungle/warren/Vungle$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/RuntimeValues;

.field final synthetic q:Lcom/vungle/warren/ServiceLocator;

.field final synthetic r:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/ServiceLocator;Landroid/content/Context;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$1;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$1;->p:Lcom/vungle/warren/RuntimeValues;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$1;->r:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 1
    const-class v0, Lcom/vungle/warren/tasks/JobRunner;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Cookie;

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->o:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/vungle/warren/Vungle;->access$002(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->p:Lcom/vungle/warren/RuntimeValues;

    iget-object v4, v4, Lcom/vungle/warren/RuntimeValues;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/InitCallback;

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-nez v5, :cond_12b

    .line 4
    iget-object v5, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    const-class v9, Lcom/vungle/warren/log/LogManager;

    invoke-virtual {v5, v9}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/log/LogManager;

    .line 5
    sget-object v9, Lcom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const/16 v10, 0x64

    invoke-static {v5, v9, v10}, Lcom/vungle/warren/VungleLogger;->c(Lcom/vungle/warren/log/LogManager;Lcom/vungle/warren/VungleLogger$LoggerLevel;I)V

    .line 6
    iget-object v5, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    const-class v9, Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v5, v9}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/persistence/CacheManager;

    .line 7
    iget-object v9, p0, Lcom/vungle/warren/Vungle$1;->p:Lcom/vungle/warren/RuntimeValues;

    iget-object v9, v9, Lcom/vungle/warren/RuntimeValues;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vungle/warren/VungleSettings;

    if-eqz v9, :cond_66

    .line 8
    invoke-virtual {v5}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForInit()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_66

    .line 9
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v4, v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 10
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 11
    :cond_66
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$300()Lcom/vungle/warren/persistence/CacheManager$Listener;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/vungle/warren/persistence/CacheManager;->addListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 12
    iget-object v5, p0, Lcom/vungle/warren/Vungle$1;->r:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/vungle/warren/Vungle;->access$402(Lcom/vungle/warren/Vungle;Landroid/content/Context;)Landroid/content/Context;

    .line 13
    iget-object v5, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    invoke-virtual {v5, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/persistence/Repository;

    .line 14
    :try_start_7a
    invoke-virtual {v5}, Lcom/vungle/warren/persistence/Repository;->init()V
    :try_end_7d
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_7a .. :try_end_7d} :catch_11f

    .line 15
    iget-object v10, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    const-class v11, Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v10, v11}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vungle/warren/VungleApiClient;

    .line 16
    invoke-virtual {v10}, Lcom/vungle/warren/VungleApiClient;->init()V

    if-eqz v9, :cond_93

    .line 17
    invoke-virtual {v9}, Lcom/vungle/warren/VungleSettings;->getAndroidIdOptOut()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/vungle/warren/VungleApiClient;->setDefaultIdFallbackDisabled(Z)V

    .line 18
    :cond_93
    iget-object v9, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    invoke-virtual {v9, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vungle/warren/tasks/JobRunner;

    .line 19
    iget-object v10, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    const-class v11, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v10, v11}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vungle/warren/AdLoader;

    .line 20
    invoke-virtual {v10, v9}, Lcom/vungle/warren/AdLoader;->init(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 21
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c4

    .line 22
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vungle/warren/Vungle$Consent;

    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$600(Lcom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/vungle/warren/Vungle;->access$700(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_ef

    :cond_c4
    const-string v9, "consentIsImportantToVungle"

    .line 23
    invoke-virtual {v5, v9, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vungle/warren/model/Cookie;

    if-nez v9, :cond_dd

    .line 24
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    invoke-static {v3, v8}, Lcom/vungle/warren/Vungle;->access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_ef

    .line 26
    :cond_dd
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v10

    invoke-static {v9}, Lcom/vungle/warren/Vungle;->access$800(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 27
    invoke-static {v9}, Lcom/vungle/warren/Vungle;->access$900(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/vungle/warren/Vungle;->access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    :goto_ef
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_107

    .line 29
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vungle/warren/Vungle$Consent;

    invoke-static {v5, v9}, Lcom/vungle/warren/Vungle;->access$1100(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V

    goto :goto_12b

    :cond_107
    const-string v9, "ccpaIsImportantToVungle"

    .line 30
    invoke-virtual {v5, v9, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Cookie;

    .line 31
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-static {v5}, Lcom/vungle/warren/Vungle;->access$1200(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_12b

    .line 32
    :catch_11f
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v4, v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 33
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 34
    :cond_12b
    :goto_12b
    iget-object v5, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    invoke-virtual {v5, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    const-string v5, "appId"

    .line 35
    invoke-virtual {v1, v5, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Cookie;

    if-nez v2, :cond_146

    .line 36
    new-instance v2, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v2, v5}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 37
    :cond_146
    iget-object v9, p0, Lcom/vungle/warren/Vungle$1;->o:Ljava/lang/String;

    invoke-virtual {v2, v5, v9}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 38
    :try_start_14c
    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_14f
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_14c .. :try_end_14f} :catch_163

    .line 39
    invoke-static {v3, v4, v5}, Lcom/vungle/warren/Vungle;->access$1400(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;Z)V

    .line 40
    iget-object v1, p0, Lcom/vungle/warren/Vungle$1;->q:Lcom/vungle/warren/ServiceLocator;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x2

    .line 41
    invoke-static {v1, v8, v8, v6}, Lcom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    return-void

    :catch_163
    if-eqz v4, :cond_16d

    .line 42
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v4, v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 43
    :cond_16d
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass10 (com.vungle.warren.Vungle$10)
.class Lcom/vungle/warren/Vungle$10;
.super Lcom/vungle/warren/AdEventListener;
.source "Vungle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->renderAd(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdRequest;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/vungle/warren/AdEventListener;-><init>(Lcom/vungle/warren/AdRequest;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/AdEventListener;->c()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/vungle/warren/AdActivity;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass11 (com.vungle.warren.Vungle$11)
.class Lcom/vungle/warren/Vungle$11;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$11;->o:Lcom/vungle/warren/ServiceLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/Vungle$11;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/downloader/Downloader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/Downloader;->cancelAll()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/Vungle$11;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lcom/vungle/warren/AdLoader;->clear()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/Vungle$11;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->clearAllData()V

    .line 4
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1700(Lcom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/Vungle$11;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/InitCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->access$1400(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;Z)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass12 (com.vungle.warren.Vungle$12)
.class Lcom/vungle/warren/Vungle$12;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->clearAdvertisements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$12;->o:Lcom/vungle/warren/ServiceLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/Vungle$12;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/downloader/Downloader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/Downloader;->cancelAll()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/Vungle$12;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lcom/vungle/warren/AdLoader;->clear()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/Vungle$12;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/Vungle$12;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    .line 5
    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/Vungle$12$1;

    invoke-direct {v2, p0, v0}, Lcom/vungle/warren/Vungle$12$1;-><init>(Lcom/vungle/warren/Vungle$12;Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass12.AnonymousClass1 (com.vungle.warren.Vungle$12$1)
.class Lcom/vungle/warren/Vungle$12$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/persistence/Repository;

.field final synthetic p:Lcom/vungle/warren/Vungle$12;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$12;Lcom/vungle/warren/persistence/Repository;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$12$1;->p:Lcom/vungle/warren/Vungle$12;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$12$1;->o:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/Vungle$12$1;->o:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Advertisement;

    .line 3
    :try_start_20
    iget-object v2, p0, Lcom/vungle/warren/Vungle$12$1;->o:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_14

    :catch_2a
    nop

    goto :goto_14

    :cond_2c
    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass13 (com.vungle.warren.Vungle$13)
.class Lcom/vungle/warren/Vungle$13;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/Repository$LoadCallback<",
        "Lcom/vungle/warren/model/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/Vungle$Consent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;Lcom/vungle/warren/persistence/Repository;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$13;->a:Lcom/vungle/warren/Vungle$Consent;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$13;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$13;->c:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/vungle/warren/model/Cookie;)V
    .registers 6

    if-nez p1, :cond_9

    .line 2
    new-instance p1, Lcom/vungle/warren/model/Cookie;

    const-string v0, "consentIsImportantToVungle"

    invoke-direct {p1, v0}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/vungle/warren/Vungle$13;->a:Lcom/vungle/warren/Vungle$Consent;

    sget-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    if-ne v0, v1, :cond_12

    const-string v0, "opted_in"

    goto :goto_14

    :cond_12
    const-string v0, "opted_out"

    :goto_14
    const-string v1, "consent_status"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consent_source"

    const-string v1, "publisher"

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/Vungle$13;->b:Ljava/lang/String;

    if-nez v0, :cond_36

    const-string v0, ""

    :cond_36
    const-string v1, "consent_message_version"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/Vungle$13;->c:Lcom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    return-void
.end method

.method public bridge synthetic onLoaded(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/Vungle$13;->onLoaded(Lcom/vungle/warren/model/Cookie;)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass14 (com.vungle.warren.Vungle$14)
.class Lcom/vungle/warren/Vungle$14;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/Repository$LoadCallback<",
        "Lcom/vungle/warren/model/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/Vungle$Consent;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$Consent;Lcom/vungle/warren/persistence/Repository;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$14;->a:Lcom/vungle/warren/Vungle$Consent;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$14;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/vungle/warren/model/Cookie;)V
    .registers 5

    if-nez p1, :cond_9

    .line 2
    new-instance p1, Lcom/vungle/warren/model/Cookie;

    const-string v0, "ccpaIsImportantToVungle"

    invoke-direct {p1, v0}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/vungle/warren/Vungle$14;->a:Lcom/vungle/warren/Vungle$Consent;

    sget-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    if-ne v0, v1, :cond_12

    const-string v0, "opted_out"

    goto :goto_14

    :cond_12
    const-string v0, "opted_in"

    :goto_14
    const-string v1, "ccpa_status"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/Vungle$14;->b:Lcom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    return-void
.end method

.method public bridge synthetic onLoaded(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/Vungle$14;->onLoaded(Lcom/vungle/warren/model/Cookie;)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass15 (com.vungle.warren.Vungle$15)
.class Lcom/vungle/warren/Vungle$15;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->getAvailableBidTokensBySize(Landroid/content/Context;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$15;->a:Landroid/content/Context;

    iput p2, p0, Lcom/vungle/warren/Vungle$15;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/Vungle$15;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1600(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/Vungle$15;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    .line 4
    iget v2, p0, Lcom/vungle/warren/Vungle$15;->b:I

    .line 5
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1600(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-static {v2, v4, v3}, Lcom/vungle/warren/Vungle;->getAvailableSizeForHBT(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, ","

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    .line 7
    invoke-virtual {v1, v2, v5}, Lcom/vungle/warren/persistence/Repository;->getAvailableBidTokens(II)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_45

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 10
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    :cond_45
    const-string v1, ""

    .line 11
    :goto_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1600(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 13
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass16 (com.vungle.warren.Vungle$16)
.class Lcom/vungle/warren/Vungle$16;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/persistence/CacheManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheChanged()V
    .registers 6

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$400(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$2000()V

    .line 3
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$400(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 4
    const-class v1, Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/CacheManager;

    .line 5
    const-class v2, Lcom/vungle/warren/downloader/Downloader;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/Downloader;

    .line 6
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 7
    invoke-interface {v0}, Lcom/vungle/warren/downloader/Downloader;->getAllRequests()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 10
    iget-object v4, v3, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 11
    invoke-interface {v0, v3}, Lcom/vungle/warren/downloader/Downloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_3a

    .line 12
    :cond_52
    invoke-interface {v0}, Lcom/vungle/warren/downloader/Downloader;->init()V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass2 (com.vungle.warren.Vungle$2)
.class Lcom/vungle/warren/Vungle$2;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->reConfigure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/RuntimeValues;


# direct methods
.method constructor <init>(Lcom/vungle/warren/RuntimeValues;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$2;->o:Lcom/vungle/warren/RuntimeValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$2;->o:Lcom/vungle/warren/RuntimeValues;

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/InitCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->access$1400(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;Z)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass3 (com.vungle.warren.Vungle$3)
.class Lcom/vungle/warren/Vungle$3;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/Callback<",
        "Lcom/google/gson/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/persistence/FilePreferences;

.field final synthetic b:Lcom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/persistence/FilePreferences;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$3;->b:Lcom/vungle/warren/Vungle;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$3;->a:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Lcom/vungle/warren/network/Response<",
            "Lcom/google/gson/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/Vungle$3;->a:Lcom/vungle/warren/persistence/FilePreferences;

    const/4 p2, 0x1

    const-string v0, "reported"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lcom/vungle/warren/persistence/FilePreferences;

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/Vungle$3;->a:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 4
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Saving reported state to shared preferences"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass4 (com.vungle.warren.Vungle$4)
.class Lcom/vungle/warren/Vungle$4;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/utility/AppSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$4;->a:Lcom/vungle/warren/Vungle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionTimeout()V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1600(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass5 (com.vungle.warren.Vungle$5)
.class Lcom/vungle/warren/Vungle$5;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/vungle/warren/model/Placement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$5;->o:Lcom/vungle/warren/Vungle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Placement;)I
    .registers 3

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Placement;

    check-cast p2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/Vungle$5;->compare(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Placement;)I

    move-result p1

    return p1
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass6 (com.vungle.warren.Vungle$6)
.class Lcom/vungle/warren/Vungle$6;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/util/List;

.field final synthetic p:Lcom/vungle/warren/AdLoader;

.field final synthetic q:Lcom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle;Ljava/util/List;Lcom/vungle/warren/AdLoader;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$6;->q:Lcom/vungle/warren/Vungle;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$6;->o:Ljava/util/List;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$6;->p:Lcom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->p:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_6

    :cond_1e
    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass7 (com.vungle.warren.Vungle$7)
.class Lcom/vungle/warren/Vungle$7;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ServiceLocator;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Ljava/lang/String;

.field final synthetic r:Ljava/lang/String;

.field final synthetic s:Ljava/lang/String;

.field final synthetic t:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$7;->o:Lcom/vungle/warren/ServiceLocator;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$7;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$7;->q:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$7;->r:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/warren/Vungle$7;->s:Ljava/lang/String;

    iput-object p6, p0, Lcom/vungle/warren/Vungle$7;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/vungle/warren/Vungle$7;->o:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 4
    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "incentivizedTextSetByPub"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_2f

    .line 5
    new-instance v1, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v1, v2}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_2f
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3b

    move-object v2, v3

    goto :goto_3d

    :cond_3b
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->p:Ljava/lang/String;

    .line 7
    :goto_3d
    iget-object v4, p0, Lcom/vungle/warren/Vungle$7;->q:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    move-object v4, v3

    goto :goto_49

    :cond_47
    iget-object v4, p0, Lcom/vungle/warren/Vungle$7;->q:Ljava/lang/String;

    .line 8
    :goto_49
    iget-object v5, p0, Lcom/vungle/warren/Vungle$7;->r:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_53

    move-object v5, v3

    goto :goto_55

    :cond_53
    iget-object v5, p0, Lcom/vungle/warren/Vungle$7;->r:Ljava/lang/String;

    .line 9
    :goto_55
    iget-object v6, p0, Lcom/vungle/warren/Vungle$7;->s:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5f

    move-object v6, v3

    goto :goto_61

    :cond_5f
    iget-object v6, p0, Lcom/vungle/warren/Vungle$7;->s:Ljava/lang/String;

    .line 10
    :goto_61
    iget-object v7, p0, Lcom/vungle/warren/Vungle$7;->t:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6a

    goto :goto_6c

    :cond_6a
    iget-object v3, p0, Lcom/vungle/warren/Vungle$7;->t:Ljava/lang/String;

    :goto_6c
    const-string v7, "title"

    .line 11
    invoke-virtual {v1, v7, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "body"

    .line 12
    invoke-virtual {v1, v2, v4}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "continue"

    .line 13
    invoke-virtual {v1, v2, v5}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "close"

    .line 14
    invoke-virtual {v1, v2, v6}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "userID"

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :try_start_85
    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_88
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_93

    :catch_89
    move-exception v0

    .line 17
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot save incentivized cookie"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_93
    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass8 (com.vungle.warren.Vungle$8)
.class Lcom/vungle/warren/Vungle$8;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$8;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$8;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$8;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 5

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 5
    :cond_12
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 6
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 7
    new-instance v1, Lcom/vungle/warren/AdRequest;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$8;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;)V

    .line 8
    iget-object v2, p0, Lcom/vungle/warren/Vungle$8;->b:Ljava/lang/String;

    const-class v3, Lcom/vungle/warren/model/Placement;

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    if-eqz v2, :cond_98

    .line 11
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isValid()Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_98

    .line 12
    :cond_44
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_53

    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 14
    :cond_53
    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    if-nez v0, :cond_68

    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 18
    :cond_68
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_95

    .line 19
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 20
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    goto :goto_95

    .line 21
    :cond_8c
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 22
    :cond_95
    :goto_95
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 23
    :cond_98
    :goto_98
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/Vungle$8;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass9 (com.vungle.warren.Vungle$9)
.class Lcom/vungle/warren/Vungle$9;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/vungle/warren/AdLoader;

.field final synthetic r:Lcom/vungle/warren/PlayAdCallback;

.field final synthetic s:Lcom/vungle/warren/persistence/Repository;

.field final synthetic t:Lcom/vungle/warren/AdConfig;

.field final synthetic u:Lcom/vungle/warren/VungleApiClient;

.field final synthetic v:Lcom/vungle/warren/utility/Executors;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/utility/Executors;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$9;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$9;->q:Lcom/vungle/warren/AdLoader;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    iput-object p5, p0, Lcom/vungle/warren/Vungle$9;->s:Lcom/vungle/warren/persistence/Repository;

    iput-object p6, p0, Lcom/vungle/warren/Vungle$9;->t:Lcom/vungle/warren/AdConfig;

    iput-object p7, p0, Lcom/vungle/warren/Vungle$9;->u:Lcom/vungle/warren/VungleApiClient;

    iput-object p8, p0, Lcom/vungle/warren/Vungle$9;->v:Lcom/vungle/warren/utility/Executors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    new-instance v3, Lcom/vungle/warren/AdRequest;

    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$1700(Lcom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->q:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v3}, Lcom/vungle/warren/AdLoader;->isLoading(Lcom/vungle/warren/AdRequest;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_133

    .line 3
    :cond_2b
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->s:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v2, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vungle/warren/model/Placement;

    if-nez v4, :cond_4d

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 5
    :cond_4d
    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 6
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Incorrect API for Banners and MREC"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 8
    :cond_6f
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->s:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    .line 9
    invoke-virtual {v3}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/vungle/warren/persistence/Repository;->findPotentiallyExpiredAd(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vungle/warren/model/Advertisement;

    .line 10
    :try_start_82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v5, :cond_97

    .line 11
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getExpireTime()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gez v10, :cond_97

    const/4 v6, 0x1

    goto :goto_98

    :cond_97
    const/4 v6, 0x0

    .line 12
    :goto_98
    invoke-static {v5}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v7

    if-eqz v7, :cond_ad

    if-eqz v6, :cond_a1

    goto :goto_ad

    .line 13
    :cond_a1
    iget-object v6, p0, Lcom/vungle/warren/Vungle$9;->t:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v5, v6}, Lcom/vungle/warren/model/Advertisement;->configure(Lcom/vungle/warren/AdConfig;)V

    .line 14
    iget-object v6, p0, Lcom/vungle/warren/Vungle$9;->s:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v5}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_de

    :cond_ad
    :goto_ad
    if-eqz v5, :cond_ca

    .line 15
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eq v0, v2, :cond_b7

    if-eqz v6, :cond_ca

    .line 16
    :cond_b7
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->s:Lcom/vungle/warren/persistence/Repository;

    iget-object v7, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-virtual {v0, v5, v7, v8}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 17
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->q:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v4, v7, v8, v9}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    :cond_ca
    if-eqz v6, :cond_dd

    .line 18
    invoke-virtual {v3}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 19
    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V
    :try_end_dc
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_82 .. :try_end_dc} :catch_124

    return-void

    :cond_dd
    const/4 v6, 0x1

    .line 20
    :goto_de
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$400(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 21
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->u:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleApiClient;->j()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 22
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->u:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v2

    if-eqz v6, :cond_fb

    const-string v7, ""

    goto :goto_ff

    .line 23
    :cond_fb
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v7

    .line 24
    :goto_ff
    invoke-virtual {v0, v1, v2, v7}, Lcom/vungle/warren/VungleApiClient;->u(Ljava/lang/String;ZLjava/lang/String;)Lcom/vungle/warren/network/Call;

    move-result-object v7

    new-instance v8, Lcom/vungle/warren/Vungle$9$1;

    move-object v0, v8

    move-object v1, p0

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/Vungle$9$1;-><init>(Lcom/vungle/warren/Vungle$9;ZLcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    .line 25
    invoke-interface {v7, v8}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    goto :goto_123

    :cond_10f
    if-eqz v6, :cond_11e

    .line 26
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v1, v3}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_123

    .line 27
    :cond_11e
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    invoke-static {v3, v0, v4, v5}, Lcom/vungle/warren/Vungle;->access$1900(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    :cond_123
    :goto_123
    return-void

    .line 28
    :catch_124
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 29
    :cond_133
    :goto_133
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass9.AnonymousClass1 (com.vungle.warren.Vungle$9$1)
.class Lcom/vungle/warren/Vungle$9$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/Callback<",
        "Lcom/google/gson/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/vungle/warren/AdRequest;

.field final synthetic c:Lcom/vungle/warren/model/Placement;

.field final synthetic d:Lcom/vungle/warren/model/Advertisement;

.field final synthetic e:Lcom/vungle/warren/Vungle$9;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$9;ZLcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iput-boolean p2, p0, Lcom/vungle/warren/Vungle$9$1;->a:Z

    iput-object p3, p0, Lcom/vungle/warren/Vungle$9$1;->b:Lcom/vungle/warren/AdRequest;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$9$1;->c:Lcom/vungle/warren/model/Placement;

    iput-object p5, p0, Lcom/vungle/warren/Vungle$9$1;->d:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object p1, p1, Lcom/vungle/warren/Vungle$9;->v:Lcom/vungle/warren/utility/Executors;

    invoke-interface {p1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/vungle/warren/Vungle$9$1$2;

    invoke-direct {p2, p0}, Lcom/vungle/warren/Vungle$9$1$2;-><init>(Lcom/vungle/warren/Vungle$9$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Lcom/vungle/warren/network/Response<",
            "Lcom/google/gson/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object p1, p1, Lcom/vungle/warren/Vungle$9;->v:Lcom/vungle/warren/utility/Executors;

    invoke-interface {p1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/Vungle$9$1$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/warren/Vungle$9$1$1;-><init>(Lcom/vungle/warren/Vungle$9$1;Lcom/vungle/warren/network/Response;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass9.AnonymousClass1.RunnableC01401 (com.vungle.warren.Vungle$9$1$1)
.class Lcom/vungle/warren/Vungle$9$1$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$9$1;->onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/network/Response;

.field final synthetic p:Lcom/vungle/warren/Vungle$9$1;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$9$1;Lcom/vungle/warren/network/Response;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$9$1$1;->p:Lcom/vungle/warren/Vungle$9$1;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$9$1$1;->o:Lcom/vungle/warren/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "Vungle#playAd"

    .line 1
    iget-object v1, p0, Lcom/vungle/warren/Vungle$9$1$1;->o:Lcom/vungle/warren/network/Response;

    invoke-virtual {v1}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/Vungle$9$1$1;->o:Lcom/vungle/warren/network/Response;

    invoke-virtual {v1}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/o;

    if-eqz v1, :cond_73

    const-string v3, "ad"

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 4
    :try_start_1d
    invoke-virtual {v1, v3}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v1

    .line 5
    new-instance v3, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v3, v1}, Lcom/vungle/warren/model/Advertisement;-><init>(Lcom/google/gson/o;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_26} :catch_65
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_42

    .line 6
    :try_start_26
    iget-object v1, p0, Lcom/vungle/warren/Vungle$9$1$1;->p:Lcom/vungle/warren/Vungle$9$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$9;->t:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v3, v1}, Lcom/vungle/warren/model/Advertisement;->configure(Lcom/vungle/warren/AdConfig;)V

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/Vungle$9$1$1;->p:Lcom/vungle/warren/Vungle$9$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object v2, v1, Lcom/vungle/warren/Vungle$9;->s:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_3b} :catch_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3d

    move-object v2, v3

    goto :goto_73

    :catch_3d
    move-exception v1

    move-object v2, v3

    goto :goto_43

    :catch_40
    move-object v2, v3

    goto :goto_65

    :catch_42
    move-exception v1

    .line 8
    :goto_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streaming ads Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error using will_play_ad!"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    :catch_65
    :goto_65
    const-string v1, "streaming ads IllegalArgumentException"

    .line 10
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Will Play Ad did not respond with a replacement. Move on."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9$1$1;->p:Lcom/vungle/warren/Vungle$9$1;

    iget-boolean v1, v0, Lcom/vungle/warren/Vungle$9$1;->a:Z

    if-eqz v1, :cond_97

    if-nez v2, :cond_8b

    .line 13
    iget-object v0, v0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object v1, v0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v0, v2}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_a4

    .line 14
    :cond_8b
    iget-object v1, v0, Lcom/vungle/warren/Vungle$9$1;->b:Lcom/vungle/warren/AdRequest;

    iget-object v3, v0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object v3, v3, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$9$1;->c:Lcom/vungle/warren/model/Placement;

    invoke-static {v1, v3, v0, v2}, Lcom/vungle/warren/Vungle;->access$1900(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    goto :goto_a4

    .line 15
    :cond_97
    iget-object v1, v0, Lcom/vungle/warren/Vungle$9$1;->b:Lcom/vungle/warren/AdRequest;

    iget-object v2, v0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    iget-object v3, v0, Lcom/vungle/warren/Vungle$9$1;->c:Lcom/vungle/warren/model/Placement;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$9$1;->d:Lcom/vungle/warren/model/Advertisement;

    invoke-static {v1, v2, v3, v0}, Lcom/vungle/warren/Vungle;->access$1900(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    :goto_a4
    return-void
.end method

###### Class com.vungle.warren.Vungle.AnonymousClass9.AnonymousClass1.AnonymousClass2 (com.vungle.warren.Vungle$9$1$2)
.class Lcom/vungle/warren/Vungle$9$1$2;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$9$1;->onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/Vungle$9$1;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$9$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$9$1$2;->o:Lcom/vungle/warren/Vungle$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9$1$2;->o:Lcom/vungle/warren/Vungle$9$1;

    iget-boolean v1, v0, Lcom/vungle/warren/Vungle$9$1;->a:Z

    if-eqz v1, :cond_16

    .line 2
    iget-object v0, v0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object v1, v0, Lcom/vungle/warren/Vungle$9;->o:Ljava/lang/String;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v0, v2}, Lcom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_23

    .line 3
    :cond_16
    iget-object v1, v0, Lcom/vungle/warren/Vungle$9$1;->b:Lcom/vungle/warren/AdRequest;

    iget-object v2, v0, Lcom/vungle/warren/Vungle$9$1;->e:Lcom/vungle/warren/Vungle$9;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$9;->r:Lcom/vungle/warren/PlayAdCallback;

    iget-object v3, v0, Lcom/vungle/warren/Vungle$9$1;->c:Lcom/vungle/warren/model/Placement;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$9$1;->d:Lcom/vungle/warren/model/Advertisement;

    invoke-static {v1, v2, v3, v0}, Lcom/vungle/warren/Vungle;->access$1900(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    :goto_23
    return-void
.end method

###### Class com.vungle.warren.Vungle.Consent (com.vungle.warren.Vungle$Consent)
.class public final enum Lcom/vungle/warren/Vungle$Consent;
.super Ljava/lang/Enum;
.source "Vungle.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Consent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/warren/Vungle$Consent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/warren/Vungle$Consent;

.field public static final enum OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

.field public static final enum OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/vungle/warren/Vungle$Consent;

    const-string v1, "OPTED_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/Vungle$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    .line 2
    new-instance v1, Lcom/vungle/warren/Vungle$Consent;

    const-string v3, "OPTED_OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vungle/warren/Vungle$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/vungle/warren/Vungle$Consent;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/vungle/warren/Vungle$Consent;->$VALUES:[Lcom/vungle/warren/Vungle$Consent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/warren/Vungle$Consent;
    .registers 2

    .line 1
    const-class v0, Lcom/vungle/warren/Vungle$Consent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/Vungle$Consent;

    return-object p0
.end method

.method public static values()[Lcom/vungle/warren/Vungle$Consent;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle$Consent;->$VALUES:[Lcom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0}, [Lcom/vungle/warren/Vungle$Consent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/warren/Vungle$Consent;

    return-object v0
.end method
