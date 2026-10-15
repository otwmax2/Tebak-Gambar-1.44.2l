###### Class com.google.android.gms.internal.ads.zzfsq (com.google.android.gms.internal.ads.zzfsq)
.class public final Lcom/google/android/gms/internal/ads/zzfsq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(ZZ)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    goto :goto_7

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, -0x1

    :goto_7
    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method
