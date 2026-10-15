###### Class com.google.android.gms.internal.ads.zzflj (com.google.android.gms.internal.ads.zzflj)
.class final Lcom/google/android/gms/internal/ads/zzflj;
.super Lcom/google/android/gms/internal/ads/zzfmb;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfli;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfmb;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzflj;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflj;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflj;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzfmb;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfmb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflj;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfmb;->a()I

    move-result v3

    if-ne v1, v3, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflj;->b:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfmb;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2a

    goto :goto_29

    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfmb;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    :goto_29
    return v0

    :cond_2a
    :goto_2a
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflj;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflj;->b:Ljava/lang/String;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflj;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflj;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OverlayDisplayState{statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sessionToken="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
