###### Class com.google.android.gms.internal.ads.zzaae (com.google.android.gms.internal.ads.zzaae)
.class public final Lcom/google/android/gms/internal/ads/zzaae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/zzzv;Z)Lcom/google/android/gms/internal/ads/zzbq;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move-object p1, v0

    goto :goto_7

    .line 1
    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzado;->a:Lcom/google/android/gms/internal/ads/zzadm;

    .line 2
    :goto_7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaal;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaal;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzadm;)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbq;->h()I

    move-result p1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    return-object p0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaag;
    .registers 14

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->u()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    div-int/lit8 v0, v0, 0x12

    new-array v5, v0, [J

    new-array v6, v0, [J

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v0, :cond_39

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->z()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-nez v12, :cond_2a

    .line 4
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 5
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    goto :goto_39

    .line 6
    :cond_2a
    aput-wide v8, v5, v7

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->z()J

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v8, 0x2

    .line 8
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_39
    :goto_39
    add-long/2addr v1, v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzaag;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzaag;-><init>([J[J)V

    return-object p0
.end method
