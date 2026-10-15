###### Class com.google.android.gms.internal.ads.zzflg (com.google.android.gms.internal.ads.zzflg)
.class final Lcom/google/android/gms/internal/ads/zzflg;
.super Lcom/google/android/gms/internal/ads/zzflz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:F

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Landroid/os/IBinder;ZLjava/lang/String;IFILjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzflf;)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflg;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflg;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzflg;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzflg;->d:F

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzflg;->e:I

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzflg;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->d:F

    return v0
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->c:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->e:I

    return v0
.end method

.method public final e()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzflz;

    const/4 v2, 0x0

    if-eqz v1, :cond_6c

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzflz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->a:Landroid/os/IBinder;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->e()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->i()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->b:Ljava/lang/String;

    if-nez v1, :cond_25

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6c

    goto :goto_2f

    :cond_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    :goto_2f
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->c:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->c()I

    move-result v3

    if-ne v1, v3, :cond_6c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->d:F

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->a()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_6c

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->b()I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->h()Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->e:I

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->d()I

    move-result v3

    if-ne v1, v3, :cond_6c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->f:Ljava/lang/String;

    if-nez v1, :cond_60

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->f()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6c

    goto :goto_6b

    :cond_60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflz;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_6c

    :cond_6b
    :goto_6b
    return v0

    :cond_6c
    :goto_6c
    return v2
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->a:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflg;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_15

    .line 2
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    mul-int v0, v0, v1

    xor-int/lit16 v0, v0, 0x4d5

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzflg;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzflg;->d:F

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    const v2, 0x22cd8cdb

    mul-int v0, v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzflg;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->f:Ljava/lang/String;

    if-nez v1, :cond_39

    goto :goto_3d

    .line 5
    :cond_39
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3d
    xor-int/2addr v0, v3

    return v0
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflg;->a:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflg;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzflg;->c:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzflg;->d:F

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzflg;->e:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzflg;->f:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OverlayDisplayShowRequest{windowToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", stableSessionToken=false, appId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", layoutGravity="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", layoutVerticalMargin="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", displayMode=0, sessionToken=null, windowWidthPx="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adFieldEnifd="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
