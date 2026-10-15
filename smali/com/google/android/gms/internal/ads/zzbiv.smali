###### Class com.google.android.gms.internal.ads.zzbiv (com.google.android.gms.internal.ads.zzbiv)
.class public final Lcom/google/android/gms/internal/ads/zzbiv;
.super Lcom/google/android/gms/internal/ads/zzbii;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field public static final synthetic d:I


# instance fields
.field private a:Landroid/webkit/WebViewClient;

.field private final b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

.field private final c:Landroid/webkit/WebView;


# direct methods
.method private final b(Landroid/webkit/WebView;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const-string p1, "H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Landroid/webkit/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->a:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbiv;->b(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbii;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->c:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbiv;->b(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbii;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbiv;->b(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbii;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
