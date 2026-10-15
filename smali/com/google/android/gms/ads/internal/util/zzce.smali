###### Class com.google.android.gms.ads.internal.util.zzce (com.google.android.gms.ads.internal.util.zzce)
.class public final Lcom/google/android/gms/ads/internal/util/zzce;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static b:Lcom/google/android/gms/ads/internal/util/zzce;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/util/zzce;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzce;->b:Lcom/google/android/gms/ads/internal/util/zzce;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzce;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzce;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzce;->b:Lcom/google/android/gms/ads/internal/util/zzce;

    :cond_b
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzce;->b:Lcom/google/android/gms/ads/internal/util/zzce;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .registers 8

    const-string v0, "Updating user agent."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzce;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result v2

    if-nez v2, :cond_1e

    if-nez v1, :cond_3c

    const/4 v1, 0x0

    .line 6
    :cond_1e
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "admob_user_agent"

    .line 7
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "user_agent"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-nez v1, :cond_39

    .line 9
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3c

    .line 10
    :cond_39
    invoke-static {p1, v2, v4}, Lcom/google/android/gms/common/util/SharedPreferencesUtils;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 11
    :cond_3c
    :goto_3c
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzce;->a:Ljava/lang/String;

    :cond_3e
    const-string p1, "User agent is updated."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-void
.end method
