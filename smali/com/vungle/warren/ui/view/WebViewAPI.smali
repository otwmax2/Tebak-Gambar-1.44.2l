###### Class com.vungle.warren.ui.view.WebViewAPI (com.vungle.warren.ui.view.WebViewAPI)
.class public interface abstract Lcom/vungle/warren/ui/view/WebViewAPI;
.super Ljava/lang/Object;
.source "WebViewAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;,
        Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;
    }
.end annotation


# virtual methods
.method public abstract notifyPropertiesChange(Z)V
.end method

.method public abstract setAdVisibility(Z)V
.end method

.method public abstract setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setErrorHandler(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V
.end method

.method public abstract setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V
.end method

.method public abstract setWebViewObserver(Lcom/vungle/warren/omsdk/WebViewObserver;)V
.end method

###### Class com.vungle.warren.ui.view.WebViewAPI.MRAIDDelegate (com.vungle.warren.ui.view.WebViewAPI$MRAIDDelegate)
.class public interface abstract Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;
.super Ljava/lang/Object;
.source "WebViewAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/WebViewAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MRAIDDelegate"
.end annotation


# virtual methods
.method public abstract processCommand(Ljava/lang/String;Lcom/google/gson/o;)Z
.end method

###### Class com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler (com.vungle.warren.ui.view.WebViewAPI$WebClientErrorHandler)
.class public interface abstract Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;
.super Ljava/lang/Object;
.source "WebViewAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/WebViewAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebClientErrorHandler"
.end annotation


# virtual methods
.method public abstract onReceivedError(Ljava/lang/String;Z)V
.end method

.method public abstract onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
.end method

.method public abstract onWebRenderingProcessGone(Landroid/webkit/WebView;Z)Z
.end method
