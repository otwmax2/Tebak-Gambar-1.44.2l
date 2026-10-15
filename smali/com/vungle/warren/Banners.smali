###### Class com.vungle.warren.Banners (com.vungle.warren.Banners)
.class public final Lcom/vungle/warren/Banners;
.super Ljava/lang/Object;
.source "Banners.java"


# static fields
.field private static final a:Ljava/lang/String; = "Banners"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Banners;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/warren/Banners;->d(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V
    .registers 4
    .param p2    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    if-eqz p1, :cond_a

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 3
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Banner load error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Banners#onLoadError"

    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static canPlayAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p0

    return p0
.end method

.method public static canPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 8

    .line 2
    invoke-static {p2}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 3
    sget-object p0, Lcom/vungle/warren/Banners;->a:Ljava/lang/String;

    const-string p1, "Invalid Ad Size. Cannot check loaded status of non banner size placements."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_f
    invoke-static {}, Lcom/vungle/warren/Vungle;->appContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 5
    sget-object p0, Lcom/vungle/warren/Banners;->a:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_1d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 7
    sget-object p0, Lcom/vungle/warren/Banners;->a:Ljava/lang/String;

    const-string p1, "PlacementId is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_2b
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 9
    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 10
    const-class v3, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 11
    new-instance v3, Lcom/vungle/warren/persistence/FutureResult;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcom/vungle/warren/Banners$1;

    invoke-direct {v4, v0, p0, p1, p2}, Lcom/vungle/warren/Banners$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 12
    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2, v0}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V
    .registers 4
    .param p2    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    if-eqz p1, :cond_a

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 3
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Banner play error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Banners#onPlaybackError"

    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/BannerAdConfig;

    invoke-direct {v0, p1}, Lcom/vungle/warren/BannerAdConfig;-><init>(Lcom/vungle/warren/AdConfig$AdSize;)V

    invoke-static {p0, v0, p2}, Lcom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;

    move-result-object p0

    return-object p0
.end method

.method public static getBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lcom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;

    move-result-object p0

    return-object p0
.end method

.method public static getBanner(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    const-string v0, "VungleBanner#getBanner"

    const-string v1, "getBanner call invoked"

    .line 3
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/vungle/warren/Vungle;->appContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_1f

    .line 5
    sget-object v0, Lcom/vungle/warren/Banners;->a:Ljava/lang/String;

    const-string v1, "Vungle is not initialized, returned VungleNativeAd = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    .line 6
    invoke-static {v6, v7, v0}, Lcom/vungle/warren/Banners;->d(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-object v9

    .line 7
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/vungle/warren/BannerAdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v10

    .line 8
    invoke-static {v8}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v3

    .line 9
    const-class v0, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v3, v0}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    .line 10
    const-class v1, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v3, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 11
    invoke-static {v8}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/RuntimeValues;

    .line 12
    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/vungle/warren/VungleSettings;

    .line 14
    new-instance v2, Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v2, v1, v7}, Lcom/vungle/warren/PlayAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/PlayAdCallback;)V

    .line 15
    new-instance v13, Lcom/vungle/warren/persistence/FutureResult;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    new-instance v15, Lcom/vungle/warren/Banners$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v4, v10

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/Banners$2;-><init>(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/AdConfig$AdSize;Ljava/lang/String;)V

    .line 16
    invoke-interface {v14, v15}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 17
    invoke-interface {v11}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v0, v1, v2}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_82

    const/16 v0, 0xd

    .line 18
    invoke-static {v6, v7, v0}, Lcom/vungle/warren/Banners;->d(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-object v9

    .line 19
    :cond_82
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8d

    return-object v9

    .line 20
    :cond_8d
    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v2, 0x0

    if-eq v10, v1, :cond_9b

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getAdRefreshDuration()I

    move-result v0

    goto :goto_9c

    :cond_9b
    const/4 v0, 0x0

    :goto_9c
    if-eqz v12, :cond_a6

    .line 21
    invoke-virtual {v12}, Lcom/vungle/warren/VungleSettings;->getBannerRefreshDisabled()Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v4, 0x0

    goto :goto_a7

    :cond_a6
    move v4, v0

    .line 22
    :goto_a7
    new-instance v9, Lcom/vungle/warren/VungleBanner;

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;

    move-result-object v3

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/VungleBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/AdMarkup;ILcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    return-object v9
.end method

.method public static loadBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_8

    const/16 p1, 0x1c

    .line 2
    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Banners;->c(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V

    return-void

    .line 3
    :cond_8
    new-instance v0, Lcom/vungle/warren/BannerAdConfig;

    invoke-direct {v0, p1}, Lcom/vungle/warren/BannerAdConfig;-><init>(Lcom/vungle/warren/AdConfig$AdSize;)V

    invoke-static {p0, v0, p2}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method public static loadBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method public static loadBanner(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 6

    const-string v0, "Banners#loadBanner"

    const-string v1, "loadBanner API call invoked"

    .line 4
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/vungle/warren/Vungle;->appContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 6
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_31

    .line 7
    :cond_14
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0, p2}, Lcom/vungle/warren/AdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    .line 8
    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p2

    invoke-static {p2}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p2

    if-nez p2, :cond_29

    const/16 p1, 0x1e

    .line 9
    invoke-static {p0, p3, p1}, Lcom/vungle/warren/Banners;->c(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V

    return-void

    .line 10
    :cond_29
    invoke-static {p1}, Lcom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;

    move-result-object p1

    invoke-static {p0, p1, v0, p3}, Lcom/vungle/warren/Vungle;->loadAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void

    :cond_31
    :goto_31
    const/16 p1, 0x9

    .line 11
    invoke-static {p0, p3, p1}, Lcom/vungle/warren/Banners;->c(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V

    return-void
.end method

###### Class com.vungle.warren.Banners.AnonymousClass1 (com.vungle.warren.Banners$1)
.class Lcom/vungle/warren/Banners$1;
.super Ljava/lang/Object;
.source "Banners.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z
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

.field final synthetic d:Lcom/vungle/warren/AdConfig$AdSize;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Banners$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/warren/Banners$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Banners$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/Banners$1;->d:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 8

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    invoke-static {}, Lcom/vungle/warren/Banners;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 5
    :cond_12
    iget-object v0, p0, Lcom/vungle/warren/Banners$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 6
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 7
    new-instance v1, Lcom/vungle/warren/AdRequest;

    iget-object v2, p0, Lcom/vungle/warren/Banners$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/Banners$1;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;)V

    .line 8
    iget-object v2, p0, Lcom/vungle/warren/Banners$1;->b:Ljava/lang/String;

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    if-nez v2, :cond_40

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 10
    :cond_40
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4f

    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 12
    :cond_4f
    iget-object v3, p0, Lcom/vungle/warren/Banners$1;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    if-nez v0, :cond_64

    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 15
    :cond_64
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/vungle/warren/Banners$1;->d:Lcom/vungle/warren/AdConfig$AdSize;

    sget-object v5, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_8c

    .line 18
    invoke-static {v1}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v3}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 19
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8c

    const/4 v4, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v4, 0x0

    .line 20
    :goto_8d
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-static {v1}, Lcom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 21
    invoke-static {v3}, Lcom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    if-eqz v2, :cond_a0

    goto :goto_a1

    :cond_a0
    move v6, v4

    :goto_a1
    if-nez v6, :cond_ac

    .line 22
    iget-object v2, p0, Lcom/vungle/warren/Banners$1;->d:Lcom/vungle/warren/AdConfig$AdSize;

    if-ne v2, v1, :cond_a9

    if-eq v2, v3, :cond_ac

    .line 23
    :cond_a9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 24
    :cond_ac
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/vungle/warren/Banners$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.Banners.AnonymousClass2 (com.vungle.warren.Banners$2)
.class Lcom/vungle/warren/Banners$2;
.super Ljava/lang/Object;
.source "Banners.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/util/Pair<",
        "Ljava/lang/Boolean;",
        "Lcom/vungle/warren/model/Placement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/warren/PlayAdCallback;

.field final synthetic c:Lcom/vungle/warren/ServiceLocator;

.field final synthetic d:Lcom/vungle/warren/AdConfig$AdSize;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/AdConfig$AdSize;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/warren/Banners$2;->b:Lcom/vungle/warren/PlayAdCallback;

    iput-object p3, p0, Lcom/vungle/warren/Banners$2;->c:Lcom/vungle/warren/ServiceLocator;

    iput-object p4, p0, Lcom/vungle/warren/Banners$2;->d:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object p5, p0, Lcom/vungle/warren/Banners$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 3
    invoke-static {}, Lcom/vungle/warren/Banners;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Vungle is not initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/Banners$2;->b:Lcom/vungle/warren/PlayAdCallback;

    const/16 v3, 0x9

    invoke-static {v0, v2, v3}, Lcom/vungle/warren/Banners;->b(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    .line 5
    new-instance v0, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_21
    iget-object v0, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0xd

    if-eqz v0, :cond_3a

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/Banners$2;->b:Lcom/vungle/warren/PlayAdCallback;

    invoke-static {v0, v3, v2}, Lcom/vungle/warren/Banners;->b(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    .line 8
    new-instance v0, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 9
    :cond_3a
    iget-object v0, p0, Lcom/vungle/warren/Banners$2;->c:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v3}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 10
    iget-object v3, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_63

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/Banners$2;->b:Lcom/vungle/warren/PlayAdCallback;

    invoke-static {v0, v3, v2}, Lcom/vungle/warren/Banners;->b(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    .line 12
    new-instance v0, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 13
    :cond_63
    iget-object v1, p0, Lcom/vungle/warren/Banners$2;->d:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v1}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 14
    iget-object v1, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/Banners$2;->b:Lcom/vungle/warren/PlayAdCallback;

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lcom/vungle/warren/Banners;->b(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    .line 15
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 16
    :cond_7c
    iget-object v1, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/Banners$2;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/Banners$2;->d:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v1, v2, v3}, Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 17
    iget-object v1, p0, Lcom/vungle/warren/Banners$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/Banners$2;->b:Lcom/vungle/warren/PlayAdCallback;

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Lcom/vungle/warren/Banners;->b(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    .line 18
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 19
    :cond_99
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/Banners$2;->call()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
