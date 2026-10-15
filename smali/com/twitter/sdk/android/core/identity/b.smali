###### Class com.twitter.sdk.android.core.identity.b (com.twitter.sdk.android.core.identity.b)
.class Lcom/twitter/sdk/android/core/identity/b;
.super Landroid/webkit/WebChromeClient;
.source "OAuthWebChromeClient.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
