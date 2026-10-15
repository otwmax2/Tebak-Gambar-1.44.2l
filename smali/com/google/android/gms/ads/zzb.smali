###### Class com.google.android.gms.ads.zzb (com.google.android.gms.ads.zzb)
.class public final Lcom/google/android/gms/ads/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/ads/AdSize;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->h()I

    move-result p0

    return p0
.end method

.method public static b(Lcom/google/android/gms/ads/AdSize;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->g()I

    move-result p0

    return p0
.end method

.method public static c(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static d(II)Lcom/google/android/gms/ads/AdSize;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdSize;->k(Z)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->i(I)V

    return-object v0
.end method

.method public static e(II)Lcom/google/android/gms/ads/AdSize;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdSize;->l(Z)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->j(I)V

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/ads/AdSize;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->m()Z

    move-result p0

    return p0
.end method

.method public static g(Lcom/google/android/gms/ads/AdSize;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->n()Z

    move-result p0

    return p0
.end method

.method public static h(Lcom/google/android/gms/ads/AdSize;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->o()Z

    move-result p0

    return p0
.end method
