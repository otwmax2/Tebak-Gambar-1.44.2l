###### Class com.vungle.warren.AdvertisementPresentationFactory (com.vungle.warren.AdvertisementPresentationFactory)
.class public Lcom/vungle/warren/AdvertisementPresentationFactory;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"

# interfaces
.implements Lcom/vungle/warren/PresentationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;,
        Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;,
        Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;,
        Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "AdvertisementPresentationFactory"


# instance fields
.field private final a:Lcom/vungle/warren/tasks/JobRunner;

.field private b:Lcom/vungle/warren/VungleApiClient;

.field private c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

.field private d:Lcom/vungle/warren/persistence/Repository;

.field private e:Lcom/vungle/warren/VungleStaticApi;

.field private f:Lcom/vungle/warren/model/Advertisement;

.field private final g:Lcom/vungle/warren/AdLoader;

.field private final h:Lcom/vungle/warren/SessionData;

.field private final i:Lcom/vungle/warren/omsdk/OMTracker$Factory;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private k:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/omsdk/OMTracker$Factory;Ljava/util/concurrent/ExecutorService;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/AdvertisementPresentationFactory$1;-><init>(Lcom/vungle/warren/AdvertisementPresentationFactory;)V

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->k:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->e:Lcom/vungle/warren/VungleStaticApi;

    .line 4
    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->d:Lcom/vungle/warren/persistence/Repository;

    .line 5
    iput-object p4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->b:Lcom/vungle/warren/VungleApiClient;

    .line 6
    iput-object p5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->a:Lcom/vungle/warren/tasks/JobRunner;

    .line 7
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->g:Lcom/vungle/warren/AdLoader;

    .line 8
    iget-object p1, p6, Lcom/vungle/warren/RuntimeValues;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/SessionData;

    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->h:Lcom/vungle/warren/SessionData;

    .line 9
    iput-object p7, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->i:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    .line 10
    iput-object p8, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/model/Advertisement;)Lcom/vungle/warren/model/Advertisement;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->f:Lcom/vungle/warren/model/Advertisement;

    return-object p1
.end method

.method private c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    invoke-virtual {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a()V

    :cond_d
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->c()V

    return-void
.end method

.method public getFullScreenPresentation(Landroid/content/Context;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/ui/OrientationDelegate;Landroid/os/Bundle;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    move-object/from16 v16, p7

    move-object/from16 v14, p8

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->c()V

    .line 2
    new-instance v15, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;

    move-object v1, v15

    iget-object v3, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->g:Lcom/vungle/warren/AdLoader;

    iget-object v5, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->d:Lcom/vungle/warren/persistence/Repository;

    iget-object v6, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->e:Lcom/vungle/warren/VungleStaticApi;

    iget-object v7, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->a:Lcom/vungle/warren/tasks/JobRunner;

    iget-object v8, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->b:Lcom/vungle/warren/VungleApiClient;

    iget-object v9, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->h:Lcom/vungle/warren/SessionData;

    move-object/from16 p1, v15

    iget-object v15, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->k:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    move-object/from16 v18, p1

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->i:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v17}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;-><init>(Landroid/content/Context;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Landroid/os/Bundle;Lcom/vungle/warren/omsdk/OMTracker$Factory;)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    .line 3
    iget-object v2, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->j:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getNativeViewPresentation(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$ViewCallback;)V
    .registers 20

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->c()V

    .line 2
    new-instance v14, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;

    iget-object v4, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->g:Lcom/vungle/warren/AdLoader;

    iget-object v5, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->d:Lcom/vungle/warren/persistence/Repository;

    iget-object v6, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->e:Lcom/vungle/warren/VungleStaticApi;

    iget-object v7, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->a:Lcom/vungle/warren/tasks/JobRunner;

    iget-object v10, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->h:Lcom/vungle/warren/SessionData;

    iget-object v11, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->k:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    iget-object v12, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->b:Lcom/vungle/warren/VungleApiClient;

    iget-object v13, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->i:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    const/4 v9, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v13}, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;-><init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/PresentationFactory$ViewCallback;Landroid/os/Bundle;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/omsdk/OMTracker$Factory;)V

    iput-object v14, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    .line 3
    iget-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->j:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v14, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->f:Lcom/vungle/warren/model/Advertisement;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    const-string v1, "ADV_FACTORY_ADVERTISEMENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.AdvertisementPresentationFactory.AnonymousClass1 (com.vungle.warren.AdvertisementPresentationFactory$1)
.class Lcom/vungle/warren/AdvertisementPresentationFactory$1;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"

# interfaces
.implements Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/AdvertisementPresentationFactory;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdvertisementPresentationFactory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->a:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->a:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {p2, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->b(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/model/Advertisement;)Lcom/vungle/warren/model/Advertisement;

    return-void
.end method

###### Class com.vungle.warren.AdvertisementPresentationFactory.BaseTask (com.vungle.warren.AdvertisementPresentationFactory$BaseTask)
.class abstract Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.super Landroid/os/AsyncTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/vungle/warren/persistence/Repository;

.field protected final b:Lcom/vungle/warren/VungleStaticApi;

.field private c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

.field private d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    .line 5
    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->b:Lcom/vungle/warren/VungleStaticApi;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    return-void
.end method

.method b(Lcom/vungle/warren/AdRequest;Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/AdRequest;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/vungle/warren/model/Advertisement;",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/error/VungleException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->b:Lcom/vungle/warren/VungleStaticApi;

    invoke-interface {v0}, Lcom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_cb

    const/16 v0, 0xa

    if-eqz p1, :cond_c5

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    if-eqz v1, :cond_b4

    .line 4
    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    goto :goto_3f

    .line 5
    :cond_37
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x24

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw p1

    .line 6
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v2, 0x0

    if-nez p2, :cond_5d

    .line 7
    iget-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    goto :goto_78

    :cond_5d
    const-string p1, "ADV_FACTORY_ADVERTISEMENT"

    .line 8
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_78

    .line 10
    iget-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p2, p1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    :cond_78
    :goto_78
    if-eqz v2, :cond_ae

    .line 11
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_9d

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 14
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 15
    :cond_9d
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Advertisement assets dir is missing"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw p1

    .line 17
    :cond_ae
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw p1

    .line 18
    :cond_b4
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No Placement for ID"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw p1

    .line 20
    :cond_c5
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw p1

    .line 21
    :cond_cb
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw p1
.end method

.method protected c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->c:Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    if-eqz p1, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;->onLoad(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V

    :cond_1a
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method

###### Class com.vungle.warren.AdvertisementPresentationFactory.BaseTask.OnModelLoadListener (com.vungle.warren.AdvertisementPresentationFactory$BaseTask$OnModelLoadListener)
.class interface abstract Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnModelLoadListener"
.end annotation


# virtual methods
.method public abstract onLoad(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V
.end method

###### Class com.vungle.warren.AdvertisementPresentationFactory.FullScreenPresentationTask (com.vungle.warren.AdvertisementPresentationFactory$FullScreenPresentationTask)
.class Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;
.super Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullScreenPresentationTask"
.end annotation


# instance fields
.field private final f:Lcom/vungle/warren/AdLoader;

.field private g:Lcom/vungle/warren/ui/view/FullAdWidget;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private final i:Lcom/vungle/warren/AdRequest;

.field private final j:Lcom/vungle/warren/ui/state/OptionsState;

.field private final k:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

.field private final l:Landroid/os/Bundle;

.field private final m:Lcom/vungle/warren/tasks/JobRunner;

.field private final n:Lcom/vungle/warren/VungleApiClient;

.field private final o:Lcom/vungle/warren/ui/CloseDelegate;

.field private final p:Lcom/vungle/warren/ui/OrientationDelegate;

.field private final q:Lcom/vungle/warren/SessionData;

.field private r:Lcom/vungle/warren/model/Advertisement;

.field private final s:Lcom/vungle/warren/omsdk/OMTracker$Factory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Landroid/os/Bundle;Lcom/vungle/warren/omsdk/OMTracker$Factory;)V
    .registers 21

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p14

    .line 1
    invoke-direct {p0, p4, p5, v3}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V

    move-object v1, p3

    .line 2
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->i:Lcom/vungle/warren/AdRequest;

    move-object v1, p9

    .line 3
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->g:Lcom/vungle/warren/ui/view/FullAdWidget;

    move-object v1, p10

    .line 4
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->j:Lcom/vungle/warren/ui/state/OptionsState;

    move-object v1, p1

    .line 5
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->h:Landroid/content/Context;

    move-object/from16 v1, p13

    .line 6
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->k:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    move-object/from16 v1, p15

    .line 7
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->l:Landroid/os/Bundle;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->m:Lcom/vungle/warren/tasks/JobRunner;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->n:Lcom/vungle/warren/VungleApiClient;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->p:Lcom/vungle/warren/ui/OrientationDelegate;

    move-object/from16 v1, p12

    .line 11
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->o:Lcom/vungle/warren/ui/CloseDelegate;

    move-object v1, p2

    .line 12
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->f:Lcom/vungle/warren/AdLoader;

    move-object v1, p8

    .line 13
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->q:Lcom/vungle/warren/SessionData;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->s:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->h:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->g:Lcom/vungle/warren/ui/view/FullAdWidget;

    return-void
.end method

.method protected c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->k:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    if-eqz v0, :cond_58

    .line 3
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->a(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->a(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object v1

    const-string v2, "Exception on creating presenter"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->k:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->a(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 6
    :cond_30
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->g:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->b(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/ui/JavascriptBridge;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/warren/ui/JavascriptBridge;)V

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->k:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->d(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdView;

    move-result-object v2

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->a(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V

    :cond_58
    return-void
.end method

.method protected varargs d([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .registers 15

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->i:Lcom/vungle/warren/AdRequest;

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->l:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->b(Lcom/vungle/warren/AdRequest;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p1
    :try_end_8
    .catch Lcom/vungle/warren/error/VungleException; {:try_start_0 .. :try_end_8} :catch_12f

    .line 2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->r:Lcom/vungle/warren/model/Advertisement;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/vungle/warren/model/Placement;

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->f:Lcom/vungle/warren/AdLoader;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/AdLoader;->canRenderAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_31

    .line 5
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Advertisement is null or assets are missing"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 7
    :cond_31
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result p1

    if-eqz p1, :cond_44

    .line 8
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 9
    :cond_44
    new-instance v6, Lcom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->m:Lcom/vungle/warren/tasks/JobRunner;

    invoke-direct {v6, p1}, Lcom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 10
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "appId"

    invoke-virtual {p1, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    if-eqz p1, :cond_6a

    .line 11
    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 12
    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    :cond_6a
    new-instance p1, Lcom/vungle/warren/ui/view/VungleWebClient;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->r:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p1, v1, v3}, Lcom/vungle/warren/ui/view/VungleWebClient;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V

    .line 14
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->r:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/io/File;

    if-eqz v9, :cond_119

    .line 15
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8e

    goto/16 :goto_119

    .line 16
    :cond_8e
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->r:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v1

    if-eqz v1, :cond_ec

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a4

    .line 17
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 18
    :cond_a4
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->s:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->n:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v1}, Lcom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->r:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v1

    if-eqz v1, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v2, 0x0

    :goto_b8
    invoke-virtual {v0, v2}, Lcom/vungle/warren/omsdk/OMTracker$Factory;->make(Z)Lcom/vungle/warren/omsdk/OMTracker;

    move-result-object v11

    .line 19
    invoke-virtual {p1, v11}, Lcom/vungle/warren/ui/view/VungleWebClient;->setWebViewObserver(Lcom/vungle/warren/omsdk/WebViewObserver;)V

    .line 20
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->r:Lcom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    new-instance v5, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v5}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v8, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->j:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v10, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->q:Lcom/vungle/warren/SessionData;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->i:Lcom/vungle/warren/AdRequest;

    .line 21
    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getImpression()[Ljava/lang/String;

    move-result-object v12

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v12}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/omsdk/OMTracker;[Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/vungle/warren/ui/view/MRAIDAdView;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->g:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->p:Lcom/vungle/warren/ui/OrientationDelegate;

    iget-object v5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->o:Lcom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vungle/warren/ui/view/MRAIDAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 23
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v1, v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;)V

    return-object v2

    .line 24
    :cond_ec
    new-instance v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->r:Lcom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    new-instance v5, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v5}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v8, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->j:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v10, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->q:Lcom/vungle/warren/SessionData;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->i:Lcom/vungle/warren/AdRequest;

    .line 25
    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getImpression()[Ljava/lang/String;

    move-result-object v11

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v11}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;[Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->g:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->p:Lcom/vungle/warren/ui/OrientationDelegate;

    iget-object v5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->o:Lcom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vungle/warren/ui/view/LocalAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 27
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v1, v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;)V

    return-object v2

    .line 28
    :cond_119
    :goto_119
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Advertisement assets dir is missing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    :catch_12f
    move-exception p1

    .line 30
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->d([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method

###### Class com.vungle.warren.AdvertisementPresentationFactory.NativeViewPresentationTask (com.vungle.warren.AdvertisementPresentationFactory$NativeViewPresentationTask)
.class Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;
.super Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeViewPresentationTask"
.end annotation


# instance fields
.field private final f:Lcom/vungle/warren/AdRequest;

.field private final g:Lcom/vungle/warren/AdConfig;

.field private final h:Lcom/vungle/warren/PresentationFactory$ViewCallback;

.field private final i:Landroid/os/Bundle;

.field private final j:Lcom/vungle/warren/tasks/JobRunner;

.field private final k:Lcom/vungle/warren/AdLoader;

.field private final l:Lcom/vungle/warren/SessionData;

.field private final m:Lcom/vungle/warren/VungleApiClient;

.field private final n:Lcom/vungle/warren/omsdk/OMTracker$Factory;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/PresentationFactory$ViewCallback;Landroid/os/Bundle;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/omsdk/OMTracker$Factory;)V
    .registers 13

    .line 1
    invoke-direct {p0, p4, p5, p10}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->f:Lcom/vungle/warren/AdRequest;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->g:Lcom/vungle/warren/AdConfig;

    .line 4
    iput-object p7, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->h:Lcom/vungle/warren/PresentationFactory$ViewCallback;

    .line 5
    iput-object p8, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->i:Landroid/os/Bundle;

    .line 6
    iput-object p6, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->j:Lcom/vungle/warren/tasks/JobRunner;

    .line 7
    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->k:Lcom/vungle/warren/AdLoader;

    .line 8
    iput-object p9, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->l:Lcom/vungle/warren/SessionData;

    .line 9
    iput-object p11, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->m:Lcom/vungle/warren/VungleApiClient;

    .line 10
    iput-object p12, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->n:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    return-void
.end method


# virtual methods
.method protected c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->h:Lcom/vungle/warren/PresentationFactory$ViewCallback;

    if-eqz v0, :cond_23

    .line 3
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->b(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->a(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/PresentationFactory$ViewCallback;->onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V

    :cond_23
    return-void
.end method

.method protected varargs d([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .registers 16

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->f:Lcom/vungle/warren/AdRequest;

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->i:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->b(Lcom/vungle/warren/AdRequest;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p1
    :try_end_8
    .catch Lcom/vungle/warren/error/VungleException; {:try_start_0 .. :try_end_8} :catch_111

    .line 2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 3
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0xa

    if-eq v0, v1, :cond_2a

    .line 4
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid Ad Type for Native Ad."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 6
    :cond_2a
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/model/Placement;

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->k:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 8
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Advertisement is null or assets are missing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 10
    :cond_4a
    new-instance v6, Lcom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->j:Lcom/vungle/warren/tasks/JobRunner;

    invoke-direct {v6, v0}, Lcom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 11
    new-instance v0, Lcom/vungle/warren/ui/view/VungleWebClient;

    invoke-direct {v0, v2, p1}, Lcom/vungle/warren/ui/view/VungleWebClient;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V

    .line 12
    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/io/File;

    const/16 v4, 0x1a

    if-eqz v9, :cond_fd

    .line 13
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_73

    goto/16 :goto_fd

    .line 14
    :cond_73
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "mrec"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    iget-object v5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->g:Lcom/vungle/warren/AdConfig;

    .line 15
    invoke-virtual {v5}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v5

    sget-object v7, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq v5, v7, :cond_9f

    .line 16
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Corresponding AdConfig#setAdSize must be passed for the type/size of native ad"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 18
    :cond_9f
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v5

    if-nez v5, :cond_b0

    .line 19
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 20
    :cond_b0
    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->g:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->configure(Lcom/vungle/warren/AdConfig;)V

    .line 21
    :try_start_b5
    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_ba
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_b5 .. :try_end_ba} :catch_f2

    .line 22
    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->n:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->m:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v4}, Lcom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v4

    if-eqz v4, :cond_cb

    goto :goto_cc

    :cond_cb
    const/4 v1, 0x0

    :goto_cc
    invoke-virtual {v3, v1}, Lcom/vungle/warren/omsdk/OMTracker$Factory;->make(Z)Lcom/vungle/warren/omsdk/OMTracker;

    move-result-object v11

    .line 23
    invoke-virtual {v0, v11}, Lcom/vungle/warren/ui/view/VungleWebClient;->setWebViewObserver(Lcom/vungle/warren/omsdk/WebViewObserver;)V

    .line 24
    new-instance v13, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->a:Lcom/vungle/warren/persistence/Repository;

    new-instance v5, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v5}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->l:Lcom/vungle/warren/SessionData;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->f:Lcom/vungle/warren/AdRequest;

    .line 25
    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getImpression()[Ljava/lang/String;

    move-result-object v12

    move-object v1, v13

    move-object v3, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v12}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/omsdk/OMTracker;[Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v13, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;)V

    return-object p1

    .line 27
    :catch_f2
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 28
    :cond_fd
    :goto_fd
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Advertisement assets dir is missing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    :catch_111
    move-exception p1

    .line 30
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->d([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method

###### Class com.vungle.warren.AdvertisementPresentationFactory.PresentationResultHolder (com.vungle.warren.AdvertisementPresentationFactory$PresentationResultHolder)
.class Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationResultHolder"
.end annotation


# instance fields
.field private a:Lcom/vungle/warren/ui/contract/AdContract$AdView;

.field private b:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

.field private c:Lcom/vungle/warren/error/VungleException;

.field private d:Lcom/vungle/warren/ui/view/VungleWebClient;


# direct methods
.method constructor <init>(Lcom/vungle/warren/error/VungleException;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->c:Lcom/vungle/warren/error/VungleException;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->a:Lcom/vungle/warren/ui/contract/AdContract$AdView;

    .line 5
    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->b:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->d:Lcom/vungle/warren/ui/view/VungleWebClient;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->c:Lcom/vungle/warren/error/VungleException;

    return-object p0
.end method

.method static synthetic b(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->d:Lcom/vungle/warren/ui/view/VungleWebClient;

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->b:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->a:Lcom/vungle/warren/ui/contract/AdContract$AdView;

    return-object p0
.end method
