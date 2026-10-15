###### Class com.google.android.gms.internal.ads.zzcez (com.google.android.gms.internal.ads.zzcez)
.class final Lcom/google/android/gms/internal/ads/zzcez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzcfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcez;->a:Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    if-eqz p2, :cond_34

    const-string p1, "height"

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_34

    .line 4
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcez;->a:Lcom/google/android/gms/internal/ads/zzcfb;

    monitor-enter p2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_2e

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->a:Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->d1(Lcom/google/android/gms/internal/ads/zzcfb;)I

    move-result v1

    if-eq v1, p1, :cond_29

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->g1(Lcom/google/android/gms/internal/ads/zzcfb;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcez;->a:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestLayout()V

    .line 7
    :cond_29
    monitor-exit p2

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception p1

    const-string p2, "Exception occurred while getting webview content height"

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    return-void
.end method
