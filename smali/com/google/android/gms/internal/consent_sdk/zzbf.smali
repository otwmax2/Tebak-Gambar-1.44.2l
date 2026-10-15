###### Class com.google.android.gms.internal.consent_sdk.zzbf (com.google.android.gms.internal.consent_sdk.zzbf)
.class final Lcom/google/android/gms/internal/consent_sdk/zzbf;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/consent_sdk/zzbg;


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->c(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->a(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Lcom/google/android/gms/internal/consent_sdk/zzbm;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbm;->c(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->d(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "UserMessagingPlatform"

    const-string p2, "Wall html loaded."

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->e(Lcom/google/android/gms/internal/consent_sdk/zzbg;Z)Z

    :cond_15
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->a(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Lcom/google/android/gms/internal/consent_sdk/zzbm;

    move-result-object p1

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/consent_sdk/zzbm;->d(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->c(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->a(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Lcom/google/android/gms/internal/consent_sdk/zzbm;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbm;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->c(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->a(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Lcom/google/android/gms/internal/consent_sdk/zzbm;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbm;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
