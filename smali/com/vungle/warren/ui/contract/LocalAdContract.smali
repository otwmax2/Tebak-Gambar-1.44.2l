###### Class com.vungle.warren.ui.contract.LocalAdContract (com.vungle.warren.ui.contract.LocalAdContract)
.class public interface abstract Lcom/vungle/warren/ui/contract/LocalAdContract;
.super Ljava/lang/Object;
.source "LocalAdContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;,
        Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
    }
.end annotation

###### Class com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter (com.vungle.warren.ui.contract.LocalAdContract$LocalPresenter)
.class public interface abstract Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
.super Ljava/lang/Object;
.source "LocalAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/LocalAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalPresenter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter<",
        "Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onDownload()V
.end method

.method public abstract onMediaError(Ljava/lang/String;)Z
.end method

.method public abstract onMute(Z)V
.end method

.method public abstract onPrivacy()V
.end method

.method public abstract onProgressUpdate(IF)V
.end method

.method public abstract onVideoStart(IF)V
.end method

###### Class com.vungle.warren.ui.contract.LocalAdContract.LocalView (com.vungle.warren.ui.contract.LocalAdContract$LocalView)
.class public interface abstract Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
.super Ljava/lang/Object;
.source "LocalAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/LocalAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdView<",
        "Lcom/vungle/warren/ui/presenter/LocalAdPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getVideoPosition()I
.end method

.method public abstract isDialogVisible()Z
.end method

.method public abstract isVideoPlaying()Z
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract playVideo(Ljava/io/File;ZI)V
.end method

.method public abstract showCTAOverlay(ZZ)V
.end method
