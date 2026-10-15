###### Class com.google.android.gms.internal.ads.zzfbn (com.google.android.gms.internal.ads.zzfbn)
.class public final Lcom/google/android/gms/internal/ads/zzfbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a()Lcom/google/android/gms/internal/ads/zzfuu;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->k5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->c:Lcom/google/android/gms/internal/ads/zzfuu;

    return-object v0

    :cond_15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->j5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    return-object v0

    .line 8
    :cond_2a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    return-object v0
.end method
