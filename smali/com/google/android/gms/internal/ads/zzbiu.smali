###### Class com.google.android.gms.internal.ads.zzbiu (com.google.android.gms.internal.ads.zzbiu)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbiu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiu;->a:Landroid/webkit/WebView;

    sget v1, Lcom/google/android/gms/internal/ads/zzbiv;->d:I

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
