###### Class com.google.android.gms.internal.ads.zzfwz (com.google.android.gms.internal.ads.zzfwz)
.class final Lcom/google/android/gms/internal/ads/zzfwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final o:[B


# direct methods
.method synthetic constructor <init>([BLcom/google/android/gms/internal/ads/zzfwy;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfwz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    .line 2
    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    sub-int v2, v0, v1

    goto :goto_22

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    .line 3
    array-length v3, v1

    if-ge v0, v3, :cond_22

    .line 4
    aget-byte v1, v1, v0

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1f

    sub-int v2, v1, v3

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_22
    :goto_22
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfwz;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfwz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->o:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnx;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
