###### Class com.vungle.warren.AdEventListener (com.vungle.warren.AdEventListener)
.class public Lcom/vungle/warren/AdEventListener;
.super Ljava/lang/Object;
.source "AdEventListener.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;


# static fields
.field private static final m:Ljava/lang/String; = "com.vungle.warren.AdEventListener"


# instance fields
.field private final a:Lcom/vungle/warren/persistence/Repository;

.field private final b:Lcom/vungle/warren/AdLoader;

.field private final c:Lcom/vungle/warren/tasks/JobRunner;

.field private final d:Lcom/vungle/warren/VisionController;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/vungle/warren/PlayAdCallback;

.field private final g:Lcom/vungle/warren/AdRequest;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Lcom/vungle/warren/model/Placement;

.field private l:Lcom/vungle/warren/model/Advertisement;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/AdRequest;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/AdRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/vungle/warren/PlayAdCallback;",
            "Lcom/vungle/warren/persistence/Repository;",
            "Lcom/vungle/warren/AdLoader;",
            "Lcom/vungle/warren/tasks/JobRunner;",
            "Lcom/vungle/warren/VisionController;",
            "Lcom/vungle/warren/model/Placement;",
            "Lcom/vungle/warren/model/Advertisement;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/vungle/warren/AdEventListener;->i:I

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/AdEventListener;->e:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    .line 6
    iput-object p4, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    .line 7
    iput-object p5, p0, Lcom/vungle/warren/AdEventListener;->b:Lcom/vungle/warren/AdLoader;

    .line 8
    iput-object p6, p0, Lcom/vungle/warren/AdEventListener;->c:Lcom/vungle/warren/tasks/JobRunner;

    .line 9
    iput-object p7, p0, Lcom/vungle/warren/AdEventListener;->d:Lcom/vungle/warren/VisionController;

    .line 10
    iput-object p8, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    .line 11
    iput-object p9, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    .line 12
    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    if-nez v0, :cond_1e

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    iput-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    :cond_1e
    return-void
.end method

.method private b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    iput-object v0, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    :cond_1a
    return-void
.end method


# virtual methods
.method protected c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/AdEventListener;->a()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1b

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->b:Lcom/vungle/warren/AdLoader;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/AdLoader;->dropCache(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1b
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_59

    .line 5
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_59

    .line 6
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_59

    .line 7
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_59

    .line 8
    :try_start_37
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 9
    invoke-direct {p0}, Lcom/vungle/warren/AdEventListener;->b()V

    .line 10
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    if-eqz v0, :cond_59

    .line 11
    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->b:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V
    :try_end_51
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_37 .. :try_end_51} :catch_52

    goto :goto_59

    .line 12
    :catch_52
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 13
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->c()V

    .line 14
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_80

    .line 15
    invoke-interface {v0, p2, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdEventListener#PlayAdCallback"

    .line 18
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method public onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/AdEventListener;->a()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    const-string v1, "AdEventListener#PlayAdCallback"

    if-nez v0, :cond_3c

    .line 3
    sget-object p1, Lcom/vungle/warren/AdEventListener;->m:Ljava/lang/String;

    const-string p2, "No Advertisement for ID"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->c()V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_3b

    .line 6
    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p1, p2, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": AD_UNABLE_TO_PLAY"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void

    .line 8
    :cond_3c
    invoke-direct {p0}, Lcom/vungle/warren/AdEventListener;->b()V

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_76

    .line 10
    sget-object p1, Lcom/vungle/warren/AdEventListener;->m:Ljava/lang/String;

    const-string p2, "No Placement for ID"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->c()V

    .line 12
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_75

    .line 13
    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p1, p2, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PLACEMENT_NOT_FOUND: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    return-void

    :cond_76
    :try_start_76
    const-string v0, "start"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_e8

    .line 16
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1, p2, p3, v2}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_a2

    .line 18
    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdStart(Ljava/lang/String;)V

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAdStart: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_a2
    iput v3, p0, Lcom/vungle/warren/AdEventListener;->i:I

    .line 21
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->g:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Placement;

    iput-object p1, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    if-eqz p1, :cond_c7

    .line 22
    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->b:Lcom/vungle/warren/AdLoader;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    .line 23
    :cond_c7
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->d:Lcom/vungle/warren/VisionController;

    invoke-virtual {p1}, Lcom/vungle/warren/VisionController;->c()Z

    move-result p1

    if-eqz p1, :cond_264

    .line 24
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->d:Lcom/vungle/warren/VisionController;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    .line 25
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    .line 26
    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    .line 27
    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdvertiserAppId()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p1, p2, v0, v1}, Lcom/vungle/warren/VisionController;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_264

    :cond_e8
    const-string v0, "end"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x50

    const/4 v5, 0x1

    if-eqz v0, :cond_16f

    const-string p1, "Vungle"

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up metadata and assets for placement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and advertisement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, p3, v2}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 32
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->l:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0, v3, v5}, Lcom/vungle/warren/persistence/Repository;->updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V

    .line 33
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->c:Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {v3}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 34
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->c()V

    .line 35
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_264

    .line 36
    iget-boolean v0, p0, Lcom/vungle/warren/AdEventListener;->h:Z

    if-nez v0, :cond_145

    iget v0, p0, Lcom/vungle/warren/AdEventListener;->i:I

    if-lt v0, v4, :cond_143

    goto :goto_145

    :cond_143
    const/4 v0, 0x0

    goto :goto_146

    :cond_145
    :goto_145
    const/4 v0, 0x1

    :goto_146
    if-eqz p2, :cond_151

    const-string v2, "isCTAClicked"

    .line 37
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_151

    const/4 v3, 0x1

    .line 38
    :cond_151
    invoke-interface {p1, p3, v0, v3}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;ZZ)V

    .line 39
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;)V

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAdEnd: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_264

    .line 41
    :cond_16f
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0
    :try_end_175
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_76 .. :try_end_175} :catch_25a

    const-string v3, "onAdRewarded: "

    if-eqz v0, :cond_1a4

    :try_start_179
    const-string v0, "successfulView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 42
    iput-boolean v5, p0, Lcom/vungle/warren/AdEventListener;->h:Z

    .line 43
    iget-boolean p1, p0, Lcom/vungle/warren/AdEventListener;->j:Z

    if-nez p1, :cond_264

    .line 44
    iput-boolean v5, p0, Lcom/vungle/warren/AdEventListener;->j:Z

    .line 45
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_264

    .line 46
    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_264

    :cond_1a4
    const-string v0, "percentViewed"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->k:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_1ea

    const-string p2, ":"

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 50
    array-length p2, p1

    if-ne p2, v2, :cond_1c5

    .line 51
    aget-object p1, p1, v5

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/AdEventListener;->i:I

    .line 53
    :cond_1c5
    iget-boolean p1, p0, Lcom/vungle/warren/AdEventListener;->j:Z

    if-nez p1, :cond_264

    iget p1, p0, Lcom/vungle/warren/AdEventListener;->i:I

    if-lt p1, v4, :cond_264

    .line 54
    iput-boolean v5, p0, Lcom/vungle/warren/AdEventListener;->j:Z

    .line 55
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_264

    .line 56
    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_264

    :cond_1ea
    const-string v0, "open"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23a

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_23a

    const-string p1, "adClick"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_218

    .line 60
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdClick(Ljava/lang/String;)V

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAdClick: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_264

    :cond_218
    const-string p1, "adLeftApplication"

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_264

    .line 63
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdLeftApplication(Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAdLeftApplication: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_264

    :cond_23a
    const-string v0, "adViewed"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_24a

    .line 66
    invoke-interface {v0, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdViewed(Ljava/lang/String;)V

    goto :goto_264

    :cond_24a
    const-string v0, "attach"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_264

    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->f:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_264

    .line 68
    invoke-interface {p1, p2}, Lcom/vungle/warren/PlayAdCallback;->creativeId(Ljava/lang/String;)V
    :try_end_259
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_179 .. :try_end_259} :catch_25a

    goto :goto_264

    .line 69
    :catch_25a
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, p1, p3}, Lcom/vungle/warren/AdEventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_264
    :goto_264
    return-void
.end method
