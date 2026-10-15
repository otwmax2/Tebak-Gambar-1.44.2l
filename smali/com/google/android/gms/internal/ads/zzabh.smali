###### Class com.google.android.gms.internal.ads.zzabh (com.google.android.gms.internal.ads.zzabh)
.class public final Lcom/google/android/gms/internal/ads/zzabh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public static b(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbq;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_61

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "="

    .line 4
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzew;->J(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5
    array-length v5, v4

    const/4 v6, 0x2

    const-string v7, "VorbisUtil"

    if-eq v5, v6, :cond_2d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to parse Vorbis comment: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 7
    :cond_2d
    aget-object v3, v4, v1

    const-string v5, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_52

    .line 8
    :try_start_38
    aget-object v3, v4, v5

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 9
    new-instance v4, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzacu;->h(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzacu;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_4a} :catch_4b

    goto :goto_5e

    :catch_4b
    move-exception v3

    const-string v4, "Failed to parse vorbis picture"

    .line 10
    invoke-static {v7, v4, v3}, Lcom/google/android/gms/internal/ads/zzee;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5e

    .line 11
    :cond_52
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaek;

    .line 12
    aget-object v6, v4, v1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 14
    :cond_61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_69

    const/4 p0, 0x0

    return-object p0

    :cond_69
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzen;ZZ)Lcom/google/android/gms/internal/ads/zzabe;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 1
    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzabh;->d(ILcom/google/android/gms/internal/ads/zzen;Z)Z

    .line 2
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->y()J

    move-result-wide v1

    long-to-int p1, v1

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnh;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->y()J

    move-result-wide v2

    long-to-int v4, v2

    .line 5
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    :goto_1f
    int-to-long v5, v0

    cmp-long v7, v5, v2

    if-gez v7, :cond_3b

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->y()J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v1, v1, 0x4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfnh;->c:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/zzen;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 8
    aput-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_3b
    if-eqz p2, :cond_4e

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_46

    goto :goto_4e

    :cond_46
    const/4 p0, 0x0

    const-string p1, "framing bit expected to be set"

    .line 10
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzabe;

    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzabe;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static d(ILcom/google/android/gms/internal/ads/zzen;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_26

    if-eqz p2, :cond_c

    return v1

    .line 2
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "too short header: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    .line 5
    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    if-eq v0, p0, :cond_42

    if-eqz p2, :cond_2f

    return v1

    .line 6
    :cond_2f
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "expected header type "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    .line 8
    :cond_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_75

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_75

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_75

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_75

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_75

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_73

    goto :goto_75

    :cond_73
    const/4 p0, 0x1

    return p0

    :cond_75
    :goto_75
    if-eqz p2, :cond_78

    return v1

    :cond_78
    const-string p0, "expected characters \'vorbis\'"

    .line 14
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0
.end method
