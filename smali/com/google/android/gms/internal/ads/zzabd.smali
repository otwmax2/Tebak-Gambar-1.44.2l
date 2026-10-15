###### Class com.google.android.gms.internal.ads.zzabd (com.google.android.gms.internal.ads.zzabd)
.class public final Lcom/google/android/gms/internal/ads/zzabd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabd;->a:[B

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabd;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabd;->c:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabd;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(I)I
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabd;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabd;->d:I

    rsub-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabd;->a:[B

    .line 2
    aget-byte v0, v3, v0

    const/16 v3, 0xff

    and-int/2addr v0, v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzabd;->d:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v3, v4

    and-int/2addr v0, v4

    :goto_1b
    if-ge v1, p1, :cond_2a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzabd;->a:[B

    add-int/lit8 v5, v2, 0x1

    .line 3
    aget-byte v2, v4, v2

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x8

    move v2, v5

    goto :goto_1b

    :cond_2a
    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    return v0
.end method

.method public final c(I)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabd;->c:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabd;->c:I

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzabd;->d:I

    sub-int/2addr p1, v1

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzabd;->d:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabd;->c:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzabd;->d:I

    :cond_1a
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_27

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzabd;->b:I

    if-lt v0, v3, :cond_26

    if-ne v0, v3, :cond_27

    if-nez v2, :cond_27

    :cond_26
    const/4 p1, 0x1

    :cond_27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    return-void
.end method

.method public final d()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabd;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabd;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabd;->d:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    and-int/2addr v0, v1

    if-eq v1, v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    return v1
.end method
