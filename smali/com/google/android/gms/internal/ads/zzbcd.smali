###### Class com.google.android.gms.internal.ads.zzbcd (com.google.android.gms.internal.ads.zzbcd)
.class public final Lcom/google/android/gms/internal/ads/zzbcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final b:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final c:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final d:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final e:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "gads:cui_monitoring_session_sample_rate"

    const-wide v1, 0x3f33a92a30553261L    # 3.0E-4

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->a(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:cui_monitoring_enabled"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:cui_monitoring_v2_enabled"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:cui_monitoring_v3_enabled"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:cui_monitoring_v4_enabled"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method
