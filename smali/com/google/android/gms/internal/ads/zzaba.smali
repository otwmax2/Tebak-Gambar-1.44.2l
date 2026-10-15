###### Class com.google.android.gms.internal.ads.zzaba (com.google.android.gms.internal.ads.zzaba)
.class public final Lcom/google/android/gms/internal/ads/zzaba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(I[BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaba;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaba;->b:[B

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaba;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaba;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2f

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaba;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaba;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaba;->a:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaba;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaba;->c:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaba;->d:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaba;->d:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaba;->b:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaba;->b:[B

    .line 2
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2f

    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaba;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaba;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaba;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaba;->d:I

    add-int/2addr v0, v1

    return v0
.end method
