###### Class com.google.android.gms.internal.ads.zzcfk (com.google.android.gms.internal.ads.zzcfk)
.class public final Lcom/google/android/gms/internal/ads/zzcfk;
.super Lcom/google/android/gms/internal/ads/zzcfl;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzawe;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcfl;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzawe;Z)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcfl;->P0(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
