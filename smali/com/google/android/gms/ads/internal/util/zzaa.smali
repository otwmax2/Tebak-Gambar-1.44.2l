###### Class com.google.android.gms.ads.internal.util.zzaa (com.google.android.gms.ads.internal.util.zzaa)
.class public Lcom/google/android/gms/ads/internal/util/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static l(I)Lcom/google/android/gms/ads/internal/util/zzaa;
    .registers 2

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_a

    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzy;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzy;-><init>()V

    return-object p0

    :cond_a
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_14

    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzx;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzx;-><init>()V

    return-object p0

    :cond_14
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_1e

    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzv;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzv;-><init>()V

    return-object p0

    :cond_1e
    const/16 v0, 0x18

    if-lt p0, v0, :cond_28

    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzu;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzu;-><init>()V

    return-object p0

    :cond_28
    const/16 v0, 0x15

    if-lt p0, v0, :cond_32

    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzt;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzt;-><init>()V

    return-object p0

    :cond_32
    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzaa;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzaa;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return-object v1

    .line 2
    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 3
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception p1

    const-string v0, "Failed to obtain CookieManager."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .registers 7

    .line 1
    new-instance p3, Landroid/webkit/WebResourceResponse;

    invoke-direct {p3, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p3
.end method

.method public d(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzawe;Z)Lcom/google/android/gms/internal/ads/zzcep;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcfk;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzawe;Z)V

    return-object v0
.end method

.method public e(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public h(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I
    .registers 3

    const/16 p1, 0x3e9

    return p1
.end method

.method public i(Landroid/media/AudioManager;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public j(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public k(Landroid/content/Context;)I
    .registers 3

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    return p1
.end method
