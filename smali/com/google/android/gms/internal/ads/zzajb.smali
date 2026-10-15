###### Class com.google.android.gms.internal.ads.zzajb (com.google.android.gms.internal.ads.zzajb)
.class public final Lcom/google/android/gms/internal/ads/zzajb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a([BII)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_b

    .line 1
    aget-byte v0, p0, p1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_b

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_b
    return p1
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzen;II)J
    .registers 14

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x5

    if-ge p1, v2, :cond_10

    return-wide v0

    .line 2
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result p1

    const/high16 v2, 0x800000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1a

    return-wide v0

    :cond_1a
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0x1fff

    if-eq v2, p2, :cond_21

    return-wide v0

    :cond_21
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6f

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p1

    const/4 p2, 0x7

    if-lt p1, p2, :cond_6f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result p1

    if-lt p1, p2, :cond_6f

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p1

    const/16 v2, 0x10

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_6f

    const/4 p1, 0x6

    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    aget-byte p0, v0, v1

    int-to-long p0, p0

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    int-to-long v5, v5

    const/4 v7, 0x4

    aget-byte v0, v0, v7

    int-to-long v7, v0

    const-wide/16 v9, 0xff

    and-long/2addr p0, v9

    and-long/2addr v1, v9

    and-long/2addr v3, v9

    and-long/2addr v7, v9

    and-long/2addr v5, v9

    const/16 v0, 0x19

    shl-long/2addr p0, v0

    const/16 v0, 0x11

    shl-long v0, v1, v0

    or-long/2addr p0, v0

    const/16 v0, 0x9

    shl-long v0, v3, v0

    or-long/2addr p0, v0

    add-long/2addr v5, v5

    or-long/2addr p0, v5

    shr-long v0, v7, p2

    or-long/2addr p0, v0

    return-wide p0

    :cond_6f
    return-wide v0
.end method
