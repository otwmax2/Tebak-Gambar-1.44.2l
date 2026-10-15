###### Class com.google.android.gms.internal.ads.zzflq (com.google.android.gms.internal.ads.zzflq)
.class public final Lcom/google/android/gms/internal/ads/zzflq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzflp;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflx;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object p0, v2

    .line 3
    :cond_b
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzflx;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzflr;-><init>(Lcom/google/android/gms/internal/ads/zzflx;)V

    return-object v0
.end method
