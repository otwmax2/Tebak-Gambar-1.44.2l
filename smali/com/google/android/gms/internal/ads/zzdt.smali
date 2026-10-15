###### Class com.google.android.gms.internal.ads.zzdt (com.google.android.gms.internal.ads.zzdt)
.class public final Lcom/google/android/gms/internal/ads/zzdt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(ZLjava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzds;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzds;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Ljava/lang/String;)V

    throw p0
.end method
