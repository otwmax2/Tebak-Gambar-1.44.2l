###### Class com.google.android.gms.internal.ads.zzgfu (com.google.android.gms.internal.ads.zzgfu)
.class public final Lcom/google/android/gms/internal/ads/zzgfu;
.super Lcom/google/android/gms/internal/ads/zzggc;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/zzgfs;

.field private final d:Lcom/google/android/gms/internal/ads/zzgfr;


# direct methods
.method synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzgfs;Lcom/google/android/gms/internal/ads/zzgfr;Lcom/google/android/gms/internal/ads/zzgft;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgfu;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgfu;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgfu;->d:Lcom/google/android/gms/internal/ads/zzgfr;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->a:I

    return v0
.end method

.method public final b()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfs;->e:Lcom/google/android/gms/internal/ads/zzgfs;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->b:I

    return v0

    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfs;->b:Lcom/google/android/gms/internal/ads/zzgfs;

    if-ne v0, v1, :cond_12

    :goto_d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->b:I

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfs;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    if-ne v0, v1, :cond_17

    goto :goto_d

    :cond_17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfs;->d:Lcom/google/android/gms/internal/ads/zzgfs;

    if-ne v0, v1, :cond_1c

    goto :goto_d

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :goto_24
    throw v0

    :goto_25
    goto :goto_24
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzgfs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    return-object v0
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfs;->e:Lcom/google/android/gms/internal/ads/zzgfs;

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
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgfu;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfu;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfu;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgfu;->a:I

    if-ne v0, v2, :cond_26

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfu;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfu;->b()I

    move-result v2

    if-ne v0, v2, :cond_26

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    if-ne v0, v2, :cond_26

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgfu;->d:Lcom/google/android/gms/internal/ads/zzgfr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->d:Lcom/google/android/gms/internal/ads/zzgfr;

    if-ne p1, v0, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgfu;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgfu;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfu;->d:Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfu;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfu;->d:Lcom/google/android/gms/internal/ads/zzgfr;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgfu;->b:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgfu;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HMAC Parameters (variant: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hashType: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
