###### Class com.google.android.gms.internal.ads.zzbcq (com.google.android.gms.internal.ads.zzbcq)
.class public final Lcom/google/android/gms/internal/ads/zzbcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final b:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final c:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final d:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final e:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final f:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "gads:adapter_initialization:red_button"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcq;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:ads_service_force_stop:red_button"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcq;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:ad_serving:enabled"

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcq;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:adaptive_banner:fail_invalid_ad_size"

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcq;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:sdk_use_dynamic_module"

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcq;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:signal_adapters:red_button"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcq;->f:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method
