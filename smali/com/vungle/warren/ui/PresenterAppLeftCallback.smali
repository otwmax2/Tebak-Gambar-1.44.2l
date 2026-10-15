###### Class com.vungle.warren.ui.PresenterAppLeftCallback (com.vungle.warren.ui.PresenterAppLeftCallback)
.class public Lcom/vungle/warren/ui/PresenterAppLeftCallback;
.super Ljava/lang/Object;
.source "PresenterAppLeftCallback.java"

# interfaces
.implements Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;


# instance fields
.field private final a:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private final b:Lcom/vungle/warren/model/Placement;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/ui/PresenterAppLeftCallback;->a:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/ui/PresenterAppLeftCallback;->b:Lcom/vungle/warren/model/Placement;

    return-void
.end method


# virtual methods
.method public onLeftApplication()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/PresenterAppLeftCallback;->a:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_15

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/ui/PresenterAppLeftCallback;->b:Lcom/vungle/warren/model/Placement;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_e
    const-string v2, "open"

    const-string v3, "adLeftApplication"

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
