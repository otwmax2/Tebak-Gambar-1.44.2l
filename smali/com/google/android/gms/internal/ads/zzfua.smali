###### Class com.google.android.gms.internal.ads.zzfua (com.google.android.gms.internal.ads.zzfua)
.class public Lcom/google/android/gms/internal/ads/zzfua;
.super Lcom/google/android/gms/internal/ads/zzfuk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfuk;-><init>()V

    return-void
.end method

.method public static D(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfua;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfua;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzfua;

    goto :goto_d

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfub;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfub;-><init>(Lcom/google/android/gms/internal/ads/zzfut;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method
