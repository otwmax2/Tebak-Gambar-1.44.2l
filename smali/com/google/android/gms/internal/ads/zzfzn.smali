###### Class com.google.android.gms.internal.ads.zzfzn (com.google.android.gms.internal.ads.zzfzn)
.class public final Lcom/google/android/gms/internal/ads/zzfzn;
.super Lcom/google/android/gms/internal/ads/zzfxk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/internal/ads/zzfzl;


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzfzl;Lcom/google/android/gms/internal/ads/zzfzm;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzn;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzn;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzfzl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzn;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzn;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzl;->d:Lcom/google/android/gms/internal/ads/zzfzl;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfzn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzn;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfzn;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfzn;->a:I

    if-ne v0, v2, :cond_16

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfzn;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzn;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzn;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AesGcmSiv Parameters (variant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
