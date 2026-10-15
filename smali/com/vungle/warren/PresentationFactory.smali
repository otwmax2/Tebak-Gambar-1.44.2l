###### Class com.vungle.warren.PresentationFactory (com.vungle.warren.PresentationFactory)
.class public interface abstract Lcom/vungle/warren/PresentationFactory;
.super Ljava/lang/Object;
.source "PresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/PresentationFactory$ViewCallback;,
        Lcom/vungle/warren/PresentationFactory$FullScreenCallback;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getFullScreenPresentation(Landroid/content/Context;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/ui/OrientationDelegate;Landroid/os/Bundle;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;)V
.end method

.method public abstract getNativeViewPresentation(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$ViewCallback;)V
.end method

.method public abstract saveState(Landroid/os/Bundle;)V
.end method

###### Class com.vungle.warren.PresentationFactory.FullScreenCallback (com.vungle.warren.PresentationFactory$FullScreenCallback)
.class public interface abstract Lcom/vungle/warren/PresentationFactory$FullScreenCallback;
.super Ljava/lang/Object;
.source "PresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/PresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FullScreenCallback"
.end annotation


# virtual methods
.method public abstract onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/vungle/warren/ui/contract/AdContract$AdView;",
            "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
            ">;",
            "Lcom/vungle/warren/error/VungleException;",
            ")V"
        }
    .end annotation
.end method

###### Class com.vungle.warren.PresentationFactory.ViewCallback (com.vungle.warren.PresentationFactory$ViewCallback)
.class public interface abstract Lcom/vungle/warren/PresentationFactory$ViewCallback;
.super Ljava/lang/Object;
.source "PresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/PresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewCallback"
.end annotation


# virtual methods
.method public abstract onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V
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
.end method
