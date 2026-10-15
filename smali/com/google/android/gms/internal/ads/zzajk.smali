###### Class com.google.android.gms.internal.ads.zzajk (com.google.android.gms.internal.ads.zzajk)
.class final Lcom/google/android/gms/internal/ads/zzajk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/zzzv;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    const v2, 0x64617461

    .line 3
    invoke-static {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzajk;->d(ILcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzajj;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzzv;)Lcom/google/android/gms/internal/ads/zzaji;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    const v2, 0x666d7420

    .line 2
    invoke-static {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzajk;->d(ILcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzajj;->b:J

    const/4 v5, 0x0

    const-wide/16 v6, 0x10

    cmp-long v8, v3, v6

    if-ltz v8, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 3
    :goto_1a
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzk;

    .line 4
    invoke-virtual {v4, v3, v5, v1, v5}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->q()I

    move-result v7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->q()I

    move-result v8

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->p()I

    move-result v9

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->p()I

    move-result v10

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->q()I

    move-result v11

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->q()I

    move-result v12

    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/zzajj;->b:J

    long-to-int v1, v0

    add-int/lit8 v1, v1, -0x10

    if-lez v1, :cond_4f

    new-array v0, v1, [B

    .line 12
    invoke-virtual {v4, v0, v5, v1, v5}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    goto :goto_51

    .line 13
    :cond_4f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->f:[B

    :goto_51
    move-object v13, v0

    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    check-cast p0, Lcom/google/android/gms/internal/ads/zzzk;

    long-to-int v1, v0

    .line 15
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzaji;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(IIIIII[B)V

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzajj;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajj;->a:I

    const/4 v2, 0x0

    const v3, 0x52494646

    if-eq v1, v3, :cond_1a

    const v3, 0x52463634

    if-ne v1, v3, :cond_19

    goto :goto_1a

    :cond_19
    return v2

    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v3, 0x4

    .line 3
    invoke-virtual {p0, v1, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result p0

    const v0, 0x57415645

    if-eq p0, v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported form type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzee;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_47
    const/4 p0, 0x1

    return p0
.end method

.method private static d(ILcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzajj;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object v0

    :goto_4
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->a:I

    if-eq v1, p0, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown WAV chunk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WavHeaderReader"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->b:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_37

    long-to-int v0, v1

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object v0

    goto :goto_4

    .line 6
    :cond_37
    iget p0, v0, Lcom/google/android/gms/internal/ads/zzajj;->a:I

    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    :cond_4f
    return-object v0
.end method
