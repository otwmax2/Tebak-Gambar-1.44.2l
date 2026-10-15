###### Class com.google.android.gms.internal.ads.zzzh (com.google.android.gms.internal.ads.zzzh)
.class public final Lcom/google/android/gms/internal/ads/zzzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(JLcom/google/android/gms/internal/ads/zzen;[Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 14

    .line 1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_75

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzzh;->c(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result v0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzzh;->c(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_66

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v4

    if-le v2, v4, :cond_1e

    goto :goto_66

    :cond_1e
    const/4 v4, 0x4

    if-ne v0, v4, :cond_71

    const/16 v0, 0x8

    if-lt v2, v0, :cond_71

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v2

    const/16 v4, 0x31

    const/4 v5, 0x0

    if-ne v2, v4, :cond_3a

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v2

    move v6, v2

    const/16 v2, 0x31

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    .line 6
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v2, v8, :cond_48

    .line 7
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    const/16 v2, 0x2f

    :cond_48
    const/16 v9, 0xb5

    if-ne v0, v9, :cond_55

    if-eq v2, v4, :cond_50

    if-ne v2, v8, :cond_55

    :cond_50
    const/4 v0, 0x3

    if-ne v7, v0, :cond_55

    const/4 v0, 0x1

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    if-ne v2, v4, :cond_60

    const v2, 0x47413934

    if-ne v6, v2, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    and-int/2addr v0, v1

    :cond_60
    if-eqz v0, :cond_71

    .line 8
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzzh;->b(JLcom/google/android/gms/internal/ads/zzen;[Lcom/google/android/gms/internal/ads/zzabb;)V

    goto :goto_71

    :cond_66
    :goto_66
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v3

    .line 10
    :cond_71
    :goto_71
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_0

    :cond_75
    return-void
.end method

.method public static b(JLcom/google/android/gms/internal/ads/zzen;[Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 15

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_33

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    .line 4
    array-length v2, p3

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_33

    mul-int/lit8 v8, v0, 0x3

    aget-object v4, p3, v3

    .line 5
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 6
    invoke-interface {v4, p2, v8}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p0, v5

    if-eqz v7, :cond_30

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p0

    .line 7
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_33
    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/ads/zzen;)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    return v0
.end method
