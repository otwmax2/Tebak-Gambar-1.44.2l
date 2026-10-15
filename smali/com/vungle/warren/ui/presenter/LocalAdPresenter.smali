###### Class com.vungle.warren.ui.presenter.LocalAdPresenter (com.vungle.warren.ui.presenter.LocalAdPresenter)
.class public Lcom/vungle/warren/ui/presenter/LocalAdPresenter;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;


# static fields
.field public static final INCENTIVIZED_TRESHOLD:I = 0x4b


# instance fields
.field private A:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field private C:Lcom/vungle/warren/ui/DurationRecorder;

.field private final D:[Ljava/lang/String;

.field private E:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final a:Lcom/vungle/warren/utility/Scheduler;

.field private final b:Lcom/vungle/warren/analytics/AdAnalytics;

.field private final c:Lcom/vungle/warren/ui/view/WebViewAPI;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

.field private f:Lcom/vungle/warren/model/Placement;

.field private g:Lcom/vungle/warren/model/Advertisement;

.field private h:Lcom/vungle/warren/model/Report;

.field private i:Lcom/vungle/warren/persistence/Repository;

.field private j:Ljava/io/File;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private t:I

.field private u:Lcom/vungle/warren/SessionData;

.field private v:Z

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;[Ljava/lang/String;)V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    const-string v0, "Are you sure?"

    .line 3
    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->o:Ljava/lang/String;

    const-string v0, "If you exit now, you will not get your reward"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->p:Ljava/lang/String;

    const-string v0, "Continue"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->q:Ljava/lang/String;

    const-string v0, "Close"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->r:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    .line 7
    new-instance v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    .line 10
    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    .line 11
    iput-object p4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->a:Lcom/vungle/warren/utility/Scheduler;

    .line 12
    iput-object p5, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 13
    iput-object p6, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->c:Lcom/vungle/warren/ui/view/WebViewAPI;

    .line 14
    iput-object p3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    .line 15
    iput-object p8, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->j:Ljava/io/File;

    .line 16
    iput-object p9, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->u:Lcom/vungle/warren/SessionData;

    .line 17
    iput-object p10, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->D:[Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_64

    .line 19
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 21
    :cond_64
    invoke-direct {p0, p7}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->p(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->q(I)V

    return-void
.end method

.method static synthetic b(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k()V

    return-void
.end method

.method static synthetic c(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Advertisement;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    return-object p0
.end method

.method static synthetic e(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AdAnalytics;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    return-object p0
.end method

.method static synthetic f(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    return p0
.end method

.method static synthetic g(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    return p1
.end method

.method static synthetic h(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/persistence/Repository;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method static synthetic i(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->l()V

    return-void
.end method

.method static synthetic j(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->l:Z

    return p1
.end method

.method private k()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "LocalAdPresenter"

    const-string v1, "Busy with closing"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    const-string v1, "close"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->a:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->close()V

    return-void
.end method

.method private l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s()V

    goto :goto_f

    .line 3
    :cond_c
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k()V

    :goto_f
    return-void
.end method

.method private m()V
    .registers 7

    const-string v0, "LocalAdPresenter"

    const-string v1, "cta"

    const-string v2, ""

    .line 1
    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_9
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    const-string v3, "postroll_click"

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    const-string v3, "click_url"

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    const-string v3, "video_click"

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v4, v2}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    const-string v1, "download"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, v4}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_65

    .line 9
    :cond_56
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    new-instance v3, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v5, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-direct {v3, v4, v5}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-interface {v2, v1, v3}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    goto :goto_6a

    :cond_65
    :goto_65
    const-string v1, "CTA destination URL is not configured properly"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_6a
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_9d

    const-string v2, "open"

    const-string v3, "adClick"

    .line 12
    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_7b} :catch_7c

    goto :goto_9d

    :catch_7c
    const-string v1, "Unable to find destination activity"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download - Activity Not Found"

    .line 16
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method private n(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->removeWebView()V

    .line 3
    :cond_7
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->v(I)V

    return-void
.end method

.method private o()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private p(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 6

    .line 1
    const-class v0, Lcom/vungle/warren/model/Cookie;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "incentivizedTextSetByPub"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "configSettings"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_57

    const-string v0, "saved_report"

    .line 4
    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 p1, 0x0

    goto :goto_53

    :cond_45
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Report;

    :goto_53
    if-eqz p1, :cond_57

    .line 6
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    :cond_57
    return-void
.end method

.method private q(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_12

    .line 2
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private r(Lcom/vungle/warren/model/Cookie;)Z
    .registers 3

    if-eqz p1, :cond_1e

    const-string v0, "is_country_data_protected"

    .line 1
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "consent_status"

    .line 2
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private s()V
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "index.html"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Ljava/io/File;)V

    invoke-static {v1, v0}, Lcom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->e:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    return-void
.end method

.method private t(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    const-string v0, "incentivizedTextSetByPub"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v0, 0x0

    if-nez p1, :cond_12

    move-object v6, v0

    goto :goto_19

    :cond_12
    const-string v1, "userID"

    .line 3
    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 4
    :goto_19
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_41

    .line 5
    new-instance p1, Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->u:Lcom/vungle/warren/SessionData;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTtDownload()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/model/Report;->setTtDownload(J)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 8
    :cond_41
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->C:Lcom/vungle/warren/ui/DurationRecorder;

    if-nez p1, :cond_52

    .line 9
    new-instance p1, Lcom/vungle/warren/ui/DurationRecorder;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {p1, v1, v2, v3}, Lcom/vungle/warren/ui/DurationRecorder;-><init>(Lcom/vungle/warren/model/Report;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->C:Lcom/vungle/warren/ui/DurationRecorder;

    .line 10
    :cond_52
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->c:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setErrorHandler(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V

    .line 11
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->isCtaOverlayEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getCtaClickArea()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCTAOverlay(ZZ)V

    .line 12
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_77

    .line 13
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-interface {p1, v2, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const/16 p1, 0x1b

    .line 3
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->q(I)V

    .line 4
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s()V

    goto :goto_2d

    :cond_23
    const/16 p1, 0xa

    .line 6
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->q(I)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->close()V

    :goto_2d
    return-void
.end method

.method private v(I)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->q(I)V

    .line 2
    const-class v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 4
    invoke-virtual {v2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k()V

    return-void
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private x(Lcom/vungle/warren/model/Cookie;)V
    .registers 8

    .line 1
    new-instance v5, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;

    invoke-direct {v5, p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Lcom/vungle/warren/model/Cookie;)V

    const-string v0, "consent_status"

    const-string v1, "opted_out_by_timeout"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consent_source"

    const-string v1, "vungle_modal"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const-string v0, "consent_title"

    .line 6
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "consent_message"

    .line 7
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "button_accept"

    .line 8
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "button_deny"

    .line 9
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private y()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->o:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->p:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->q:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->r:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    const-string v5, "incentivizedTextSetByPub"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Cookie;

    if-eqz v4, :cond_50

    const-string v0, "title"

    .line 6
    invoke-virtual {v4, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_23

    :cond_21
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->o:Ljava/lang/String;

    :goto_23
    const-string v1, "body"

    .line 8
    invoke-virtual {v4, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_32

    :cond_30
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->p:Ljava/lang/String;

    :goto_32
    const-string v2, "continue"

    .line 10
    invoke-virtual {v4, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_41

    :cond_3f
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->q:Ljava/lang/String;

    :goto_41
    const-string v3, "close"

    .line 12
    invoke-virtual {v4, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_50

    :cond_4e
    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->r:Ljava/lang/String;

    :cond_50
    :goto_50
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    .line 14
    new-instance v9, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;

    invoke-direct {v9, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->attach(Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 9

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    .line 4
    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_20

    .line 6
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attach"

    invoke-interface {v0, v4, v2, v3}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_20
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_3d

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    .line 8
    :goto_34
    iput-boolean v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k:Z

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3b

    const/4 v1, 0x1

    .line 9
    :cond_3b
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->l:Z

    :cond_3d
    const/4 v0, -0x1

    .line 10
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig;->getAdOrientation()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-ne v1, v3, :cond_5d

    .line 11
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_5a

    if-eq v1, v2, :cond_58

    goto :goto_5b

    :cond_58
    const/4 v0, 0x6

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x7

    :goto_5b
    move v4, v0

    goto :goto_65

    :cond_5d
    if-nez v1, :cond_61

    const/4 v4, 0x7

    goto :goto_65

    :cond_61
    if-ne v1, v2, :cond_64

    goto :goto_65

    :cond_64
    const/4 v4, 0x4

    .line 12
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested Orientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAdPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-interface {p1, v4}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->setOrientation(I)V

    .line 14
    invoke-direct {p0, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->t(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public detach(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->e:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->cancel()V

    .line 3
    :cond_7
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->stop(I)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->destroyAdView(J)V

    return-void
.end method

.method public generateSaveState(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_16
    const-string v1, "saved_report"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    const-string v1, "in_post_roll"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 5
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k:Z

    const-string v1, "is_muted_mode"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result v0

    goto :goto_47

    :cond_45
    iget v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y:I

    :goto_47
    const-string v1, "videoPosition"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public handleExit()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k()V

    return v1

    .line 3
    :cond_9
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->l:Z

    const/4 v2, 0x0

    if-nez v0, :cond_f

    return v2

    .line 4
    :cond_f
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->z:I

    const/16 v3, 0x4b

    if-gt v0, v3, :cond_21

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y()V

    return v2

    :cond_21
    const/4 v0, 0x0

    const-string v3, "video_close"

    .line 6
    invoke-virtual {p0, v3, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s()V

    return v2

    .line 9
    :cond_33
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k()V

    return v1
.end method

.method public onDownload()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m()V

    return-void
.end method

.method public onMediaError(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->u(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onMediaError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_2c

    :sswitch_c
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_7c

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onMraidAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown MRAID Command"

    .line 4
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_62
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m()V

    .line 7
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k()V

    goto :goto_6c

    .line 8
    :pswitch_69
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k()V

    :goto_6c
    :pswitch_6c
    return-void

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x12bedc78 -> :sswitch_22
        0x5a5ddf8 -> :sswitch_17
        0x551ac888 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_69
        :pswitch_62
    .end packed-switch
.end method

.method public onMute(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k:Z

    if-eqz p1, :cond_c

    const-string p1, "mute"

    const-string v0, "true"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    const-string p1, "unmute"

    const-string v0, "false"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public onPrivacy()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    new-instance v1, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-direct {v1, v2, v3}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    const-string v2, "https://vungle.com/privacy/"

    invoke-interface {v0, v2, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    return-void
.end method

.method public onProgressUpdate(IF)V
    .registers 7

    int-to-float v0, p1

    div-float/2addr v0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1
    iput p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->z:I

    .line 2
    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y:I

    .line 3
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->C:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {p2}, Lcom/vungle/warren/ui/DurationRecorder;->update()V

    .line 4
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_31

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "percentViewed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v0, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_31
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const/4 v1, 0x1

    if-eqz p2, :cond_52

    if-lez p1, :cond_52

    iget-boolean v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->v:Z

    if-nez v2, :cond_52

    .line 7
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->v:Z

    .line 8
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adViewed"

    invoke-interface {p2, v3, v0, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->D:[Ljava/lang/String;

    if-eqz p2, :cond_52

    .line 10
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v0, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    :cond_52
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%d"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_viewed"

    invoke-virtual {p0, p2, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->z:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_98

    .line 13
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result p1

    if-ne p1, p2, :cond_95

    .line 14
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    :cond_95
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->l()V

    .line 16
    :cond_98
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y:I

    invoke-virtual {p1, p2}, Lcom/vungle/warren/model/Report;->recordProgress(I)V

    .line 17
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 18
    :goto_a8
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d2

    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->z:I

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result p2

    if-le p1, p2, :cond_d2

    .line 19
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->A:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_a8

    .line 20
    :cond_d2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    const-string p2, "configSettings"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    .line 21
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result p2

    if-eqz p2, :cond_14e

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->z:I

    const/16 v0, 0x4b

    if-le p2, v0, :cond_14e

    if-eqz p1, :cond_14e

    const-string p2, "isReportIncentivizedEnabled"

    .line 22
    invoke-virtual {p1, p2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14e

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_14e

    .line 24
    new-instance p1, Lcom/google/gson/o;

    invoke-direct {p1}, Lcom/google/gson/o;-><init>()V

    .line 25
    new-instance p2, Lcom/google/gson/r;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/String;)V

    const-string v0, "placement_reference_id"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 26
    new-instance p2, Lcom/google/gson/r;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/String;)V

    const-string v0, "app_id"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 27
    new-instance p2, Lcom/google/gson/r;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/Number;)V

    const-string v0, "adStartTime"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 28
    new-instance p2, Lcom/google/gson/r;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/String;)V

    const-string v0, "user"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 29
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/o;)V

    :cond_14e
    return-void
.end method

.method public onReceivedError(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    if-eqz p2, :cond_2a

    .line 2
    invoke-virtual {p2, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p2, v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onReceivedError"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .registers 4

    const/16 p1, 0x20

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n(I)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#onRenderProcessUnresponsive"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoStart(IF)V
    .registers 5

    .line 1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "%d"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "videoLength"

    invoke-virtual {p0, p2, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewConfigurationChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->c:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->refreshDialogIfVisible()V

    return-void
.end method

.method public onWebRenderingProcessGone(Landroid/webkit/WebView;Z)Z
    .registers 4

    const/16 p1, 0x1f

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n(I)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#onWebRenderingProcessGone"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "videoLength"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->t:I

    .line 3
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    :cond_1e
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    goto :goto_47

    :sswitch_27
    const-string v1, "video_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_47

    :cond_30
    const/4 v0, 0x2

    goto :goto_47

    :sswitch_32
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v0, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v1, "unmute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    packed-switch v0, :pswitch_data_78

    goto :goto_56

    .line 6
    :pswitch_4b
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, p1}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    :goto_56
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->B:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x321793ce -> :sswitch_3d
        0x335219 -> :sswitch_32
        0x51b1cd34 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method public restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "incentivized_sent"

    .line 1
    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    :cond_12
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    const-string v1, "in_post_roll"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    .line 4
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k:Z

    const-string v1, "is_muted_mode"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k:Z

    .line 5
    iget v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y:I

    const-string v1, "videoPosition"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y:I

    return-void
.end method

.method public setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method

.method public start()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->C:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/DurationRecorder;->start()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->hasWebView()Z

    move-result v0

    if-nez v0, :cond_36

    const/16 v0, 0x1f

    .line 3
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->v(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 6
    invoke-virtual {v2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_36
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->setImmersiveMode()V

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->resumeWeb()V

    .line 10
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d:Ljava/util/Map;

    const-string v1, "consentIsImportantToVungle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    .line 11
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->r(Lcom/vungle/warren/model/Cookie;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 12
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->x(Lcom/vungle/warren/model/Cookie;)V

    return-void

    .line 13
    :cond_54
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    if-eqz v0, :cond_62

    .line 14
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->o()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 15
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s()V

    goto :goto_be

    .line 16
    :cond_62
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isDialogVisible()Z

    move-result v0

    if-nez v0, :cond_be

    .line 17
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->j:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-boolean v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->k:Z

    iget v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y:I

    invoke-interface {v1, v0, v2, v3}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->playVideo(Ljava/io/File;ZI)V

    .line 19
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g:Lcom/vungle/warren/model/Advertisement;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result v0

    if-lez v0, :cond_b6

    .line 20
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->a:Lcom/vungle/warren/utility/Scheduler;

    new-instance v2, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_be

    :cond_b6
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->l:Z

    .line 22
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showCloseButton()V

    :cond_be
    :goto_be
    return-void
.end method

.method public stop(I)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->C:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/DurationRecorder;->stop()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    .line 2
    :cond_13
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->pauseWeb()V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y:I

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    :cond_2d
    if-nez v0, :cond_5e

    if-eqz v1, :cond_5e

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_6b

    const-string p1, "close"

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->a:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {p1}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_6b

    .line 10
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v0, "isCTAClicked"

    :cond_52
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {p1, v2, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 11
    :cond_5e
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->m:Z

    if-nez p1, :cond_64

    if-eqz v1, :cond_6b

    .line 12
    :cond_64
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->n:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-string v0, "about:blank"

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showWebsite(Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method

###### Class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass1 (com.vungle.warren.ui.presenter.LocalAdPresenter$1)
.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->a:Z

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->a:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->a:Z

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->a(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;I)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onError"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 6
    invoke-virtual {v1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    return-void
.end method

.method public onSaved()V
    .registers 1

    return-void
.end method

###### Class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass2 (com.vungle.warren.ui.presenter.LocalAdPresenter$2)
.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Ljava/io/File;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Z)V
    .registers 4

    if-eqz p1, :cond_3e

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->c(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showWebsite(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->e(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AdAnalytics;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->d(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    const-string v1, "postroll_view"

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->g(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z

    goto :goto_6d

    .line 4
    :cond_3e
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->a(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;I)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->a(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;I)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#playPost"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error Rendering Postroll"

    .line 8
    invoke-static {p1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->b:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->b(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    :goto_6d
    return-void
.end method

###### Class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass3 (com.vungle.warren.ui.presenter.LocalAdPresenter$3)
.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->x(Lcom/vungle/warren/model/Cookie;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/model/Cookie;

.field final synthetic p:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Lcom/vungle/warren/model/Cookie;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->p:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->o:Lcom/vungle/warren/model/Cookie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 p1, -0x2

    if-ne p2, p1, :cond_6

    const-string p1, "opted_out"

    goto :goto_e

    :cond_6
    const/4 p1, -0x1

    if-ne p2, p1, :cond_c

    const-string p1, "opted_in"

    goto :goto_e

    :cond_c
    const-string p1, "opted_out_by_timeout"

    .line 1
    :goto_e
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->o:Lcom/vungle/warren/model/Cookie;

    const-string v0, "consent_status"

    invoke-virtual {p2, v0, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->o:Lcom/vungle/warren/model/Cookie;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "timestamp"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->o:Lcom/vungle/warren/model/Cookie;

    const-string p2, "consent_source"

    const-string v0, "vungle_modal"

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->p:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->h(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->o:Lcom/vungle/warren/model/Cookie;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->p:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->start()V

    return-void
.end method

###### Class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass4 (com.vungle.warren.ui.presenter.LocalAdPresenter$4)
.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;->o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p1, -0x2

    if-ne p2, p1, :cond_10

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;->o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 p2, 0x0

    const-string v0, "video_close"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;->o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->i(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    :cond_10
    return-void
.end method

###### Class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass5 (com.vungle.warren.ui.presenter.LocalAdPresenter$5)
.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->j(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->f(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->o:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->c(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showCloseButton()V

    :cond_17
    return-void
.end method
