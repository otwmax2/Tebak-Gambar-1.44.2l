###### Class com.vungle.warren.ui.contract.AdContract (com.vungle.warren.ui.contract.AdContract)
.class public interface abstract Lcom/vungle/warren/ui/contract/AdContract;
.super Ljava/lang/Object;
.source "AdContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;,
        Lcom/vungle/warren/ui/contract/AdContract$AdvertisementBus;,
        Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;,
        Lcom/vungle/warren/ui/contract/AdContract$AdView;
    }
.end annotation

###### Class com.vungle.warren.ui.contract.AdContract.AdStopReason (com.vungle.warren.ui.contract.AdContract$AdStopReason)
.class public interface abstract annotation Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
.super Ljava/lang/Object;
.source "AdContract.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/AdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdStopReason"
.end annotation


# static fields
.field public static final IS_AD_FINISHED_BY_API:I = 0x4

.field public static final IS_AD_FINISHING:I = 0x2

.field public static final IS_CHANGING_CONFIGURATION:I = 0x1

###### Class com.vungle.warren.ui.contract.AdContract.AdView (com.vungle.warren.ui.contract.AdContract$AdView)
.class public interface abstract Lcom/vungle/warren/ui/contract/AdContract$AdView;
.super Ljava/lang/Object;
.source "AdContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/AdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract destroyAdView(J)V
.end method

.method public abstract getWebsiteUrl()Ljava/lang/String;
.end method

.method public abstract hasWebView()Z
.end method

.method public abstract open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end method

.method public abstract pauseWeb()V
.end method

.method public abstract refreshDialogIfVisible()V
.end method

.method public abstract removeWebView()V
.end method

.method public abstract resumeWeb()V
.end method

.method public abstract setImmersiveMode()V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract showCloseButton()V
.end method

.method public abstract showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract showWebsite(Ljava/lang/String;)V
.end method

###### Class com.vungle.warren.ui.contract.AdContract.AdvertisementBus (com.vungle.warren.ui.contract.AdContract$AdvertisementBus)
.class public interface abstract Lcom/vungle/warren/ui/contract/AdContract$AdvertisementBus;
.super Ljava/lang/Object;
.source "AdContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/AdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdvertisementBus"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "AdvertisementBus"

.field public static final COMMAND:Ljava/lang/String; = "command"

.field public static final PLACEMENT:Ljava/lang/String; = "placement"

.field public static final STOP_ALL:Ljava/lang/String; = "stopAll"

###### Class com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter (com.vungle.warren.ui.contract.AdContract$AdvertisementPresenter)
.class public interface abstract Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
.super Ljava/lang/Object;
.source "AdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/AdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdvertisementPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vungle/warren/ui/contract/AdContract$AdView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;"
    }
.end annotation


# virtual methods
.method public abstract attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/vungle/warren/ui/state/OptionsState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract detach(I)V
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param
.end method

.method public abstract generateSaveState(Lcom/vungle/warren/ui/state/OptionsState;)V
.end method

.method public abstract handleExit()Z
.end method

.method public abstract onViewConfigurationChanged()V
.end method

.method public abstract restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V
.end method

.method public abstract setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop(I)V
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param
.end method

###### Class com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter.EventListener (com.vungle.warren.ui.contract.AdContract$AdvertisementPresenter$EventListener)
.class public interface abstract Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
.super Ljava/lang/Object;
.source "AdContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V
.end method

.method public abstract onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
