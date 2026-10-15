###### Class com.vungle.warren.ui.view.VungleNativeView (com.vungle.warren.ui.view.VungleNativeView)
.class public Lcom/vungle/warren/ui/view/VungleNativeView;
.super Landroid/webkit/WebView;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
.implements Lcom/vungle/warren/VungleNativeAd;


# static fields
.field private static final w:Ljava/lang/String;


# instance fields
.field private o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

.field private p:Landroid/content/BroadcastReceiver;

.field private final q:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private final r:Lcom/vungle/warren/AdRequest;

.field private final s:Lcom/vungle/warren/AdConfig;

.field t:Lcom/vungle/warren/PresentationFactory;

.field private u:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PresentationFactory;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->u:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p5, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->q:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->r:Lcom/vungle/warren/AdRequest;

    .line 5
    iput-object p3, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->s:Lcom/vungle/warren/AdConfig;

    .line 6
    iput-object p4, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->q:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object p0
.end method

.method static synthetic b(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/AdRequest;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->r:Lcom/vungle/warren/AdRequest;

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/ui/view/VungleNativeView;Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p1
.end method

.method static synthetic e(Lcom/vungle/warren/ui/view/VungleNativeView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->g()V

    return-void
.end method

.method static synthetic f(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->u:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private g()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Landroid/webkit/WebView;)V

    .line 2
    new-instance v0, Lcom/vungle/warren/ui/JavascriptBridge;

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-direct {v0, v1}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    goto :goto_2b

    .line 4
    :cond_f
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_2b

    .line 5
    invoke-interface {v0}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->q:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->r:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public destroyAdView(J)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->v:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->v:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 4
    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    const-string v1, "Android"

    .line 5
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 7
    new-instance v0, Lcom/vungle/warren/ui/view/VungleNativeView$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$1;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_24

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2c

    .line 9
    :cond_24
    new-instance v1, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v1}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Lcom/vungle/warren/utility/HandlerScheduler;->schedule(Ljava/lang/Runnable;J)V

    :goto_2c
    return-void
.end method

.method public finishDisplayingAd()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    return-void
.end method

.method public finishDisplayingAdInternal(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->detach(I)V

    goto :goto_2b

    .line 3
    :cond_f
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    if-eqz p1, :cond_2b

    .line 4
    invoke-interface {p1}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->q:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->r:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    const-wide/16 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/view/VungleNativeView;->destroyAdView(J)V

    return-void
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWebView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-nez v1, :cond_1c

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->r:Lcom/vungle/warren/AdRequest;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->s:Lcom/vungle/warren/AdConfig;

    new-instance v3, Lcom/vungle/warren/ui/view/VungleNativeView$2;

    invoke-direct {v3, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$2;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    new-instance v4, Lcom/vungle/warren/ui/view/VungleNativeView$3;

    invoke-direct {v4, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$3;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vungle/warren/PresentationFactory;->getNativeViewPresentation(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$ViewCallback;)V

    .line 4
    :cond_1c
    new-instance v0, Lcom/vungle/warren/ui/view/VungleNativeView$4;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$4;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->p:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->resumeWeb()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lu0/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_17

    .line 4
    invoke-interface {v0}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    .line 5
    :cond_17
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->pauseWeb()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 2
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->w:Ljava/lang/String;

    const-string v1, "Resuming Flex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/vungle/warren/utility/ExternalRouter;->launch(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)Z

    move-result p2

    if-nez p2, :cond_34

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot open url "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public pauseWeb()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onPause()V

    return-void
.end method

.method public refreshDialogIfVisible()V
    .registers 1

    return-void
.end method

.method public removeWebView()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method public renderNativeView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public resumeWeb()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onResume()V

    return-void
.end method

.method public setAdVisibility(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->o:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->setAdVisibility(Z)V

    goto :goto_11

    .line 3
    :cond_8
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_11
    return-void
.end method

.method public setImmersiveMode()V
    .registers 1

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V
    .registers 2

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x4

    .line 1
    :goto_5
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public showCloseButton()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VungleNativeView does not implement a close button"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "VungleNativeView does not implement a dialog."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showWebsite(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public updateWindow()V
    .registers 1

    return-void
.end method

###### Class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass1 (com.vungle.warren.ui.view.VungleNativeView$1)
.class Lcom/vungle/warren/ui/view/VungleNativeView$1;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleNativeView;->destroyAdView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$1;->o:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$1;->o:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$1;->o:Lcom/vungle/warren/ui/view/VungleNativeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_16

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$1;->o:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    .line 5
    :cond_16
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$1;->o:Lcom/vungle/warren/ui/view/VungleNativeView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass2 (com.vungle.warren.ui.view.VungleNativeView$2)
.class Lcom/vungle/warren/ui/view/VungleNativeView$2;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/ui/CloseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass3 (com.vungle.warren.ui.view.VungleNativeView$3)
.class Lcom/vungle/warren/ui/view/VungleNativeView$3;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/PresentationFactory$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
            "Lcom/vungle/warren/ui/view/VungleWebClient;",
            ">;",
            "Lcom/vungle/warren/error/VungleException;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vungle/warren/ui/view/VungleNativeView;->t:Lcom/vungle/warren/PresentationFactory;

    if-eqz p2, :cond_21

    .line 2
    invoke-static {v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->a(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->a(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->b(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_20
    return-void

    .line 4
    :cond_21
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-static {v0, p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->d(Lcom/vungle/warren/ui/view/VungleNativeView;Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 5
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/ui/view/VungleWebClient;

    .line 6
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->c(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->a(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->c(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-interface {p1, p2, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->e(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    .line 10
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->f(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 11
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->f(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    .line 12
    :cond_6f
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_7c

    const/4 p2, -0x1

    .line 13
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_7c
    return-void
.end method

###### Class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass4 (com.vungle.warren.ui.view.VungleNativeView$4)
.class Lcom/vungle/warren/ui/view/VungleNativeView$4;
.super Landroid/content/BroadcastReceiver;
.source "VungleNativeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$4;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "command"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "stopAll"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$4;->a:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    goto :goto_3a

    .line 4
    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onAttachedToWindow"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Receiving Invalid Broadcast: %1$s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method
