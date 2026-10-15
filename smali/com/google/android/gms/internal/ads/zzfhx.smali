###### Class com.google.android.gms.internal.ads.zzfhx (com.google.android.gms.internal.ads.zzfhx)
.class public final Lcom/google/android/gms/internal/ads/zzfhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzans;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfhw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1388

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfhw;->b(I)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object p0

    return-object p0
.end method
