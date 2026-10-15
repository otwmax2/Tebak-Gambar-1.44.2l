###### Class com.vungle.warren.ui.contract.WebAdContract (com.vungle.warren.ui.contract.WebAdContract)
.class public interface abstract Lcom/vungle/warren/ui/contract/WebAdContract;
.super Ljava/lang/Object;
.source "WebAdContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;,
        Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    }
.end annotation

###### Class com.vungle.warren.ui.contract.WebAdContract.WebAdPresenter (com.vungle.warren.ui.contract.WebAdContract$WebAdPresenter)
.class public interface abstract Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
.super Ljava/lang/Object;
.source "WebAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/WebAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebAdPresenter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter<",
        "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setAdVisibility(Z)V
.end method

###### Class com.vungle.warren.ui.contract.WebAdContract.WebAdView (com.vungle.warren.ui.contract.WebAdContract$WebAdView)
.class public interface abstract Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
.super Ljava/lang/Object;
.source "WebAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/WebAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebAdView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdView<",
        "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setVisibility(Z)V
.end method

.method public abstract updateWindow()V
.end method
