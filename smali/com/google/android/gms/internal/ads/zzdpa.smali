###### Class com.google.android.gms.internal.ads.zzdpa (com.google.android.gms.internal.ads.zzdpa)
.class public final Lcom/google/android/gms/internal/ads/zzdpa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzdpa;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdoz;->a()Lcom/google/android/gms/internal/ads/zzdpa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfcu;->p:Lcom/google/android/gms/internal/ads/zzfcu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfcu;->s:Lcom/google/android/gms/internal/ads/zzfcu;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdpk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcu;)V

    return-object v0
.end method
