###### Class com.google.android.gms.internal.ads.zzaat (com.google.android.gms.internal.ads.zzaat)
.class public final Lcom/google/android/gms/internal/ads/zzaat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaat;->h()V

    return-void
.end method

.method private final g()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    if-lez v1, :cond_13

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v0

    :cond_13
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v0

    return v2
.end method

.method private final h()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_11

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:I

    if-lt v0, v3, :cond_12

    if-ne v0, v3, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    return-void
.end method

.method private final i(I)Z
    .registers 5

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1c

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:I

    if-ge p1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_1c

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, v0, p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(I)I
    .registers 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-le v2, v4, :cond_2b

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int v2, v4, v2

    or-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaat;->i(I)Z

    move-result v2

    if-eq v5, v2, :cond_27

    const/4 v3, 0x1

    :cond_27
    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    goto :goto_7

    :cond_2b
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    .line 3
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v6, v8

    or-int/2addr v1, v6

    rsub-int/lit8 p1, p1, 0x20

    if-ne v2, v4, :cond_49

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    add-int/lit8 v0, v7, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaat;->i(I)Z

    move-result v0

    if-eq v5, v0, :cond_46

    const/4 v3, 0x1

    :cond_46
    add-int/2addr v7, v3

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    :cond_49
    const/4 v0, -0x1

    ushr-int p1, v0, p1

    and-int/2addr p1, v1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaat;->h()V

    return p1
.end method

.method public final b()I
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaat;->g()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-nez v1, :cond_b

    const/4 v2, -0x1

    :cond_b
    div-int/lit8 v0, v0, 0x2

    mul-int v2, v2, v0

    return v2
.end method

.method public final c()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaat;->g()I

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1c

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaat;->i(I)Z

    move-result v2

    if-eq v1, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x2

    :goto_19
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    .line 2
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaat;->h()V

    return-void
.end method

.method public final e(I)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    mul-int/lit8 v1, v1, 0x8

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    sub-int/2addr p1, v1

    add-int/2addr v3, p1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    const/4 p1, 0x7

    if-le v3, p1, :cond_1b

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    if-gt v0, p1, :cond_30

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaat;->i(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_1b

    .line 2
    :cond_30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaat;->h()V

    return-void
.end method

.method public final f()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method
