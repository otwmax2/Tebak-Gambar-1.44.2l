###### Class com.google.android.gms.internal.ads.zzagr (com.google.android.gms.internal.ads.zzagr)
.class final Lcom/google/android/gms/internal/ads/zzagr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzags;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzags;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzags;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->c:I

    return-void
.end method

.method private final f(I)I
    .registers 7

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->d:I

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagr;->d:I

    add-int v2, p1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzags;->c:I

    if-ge v2, v4, :cond_1a

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzags;->f:[I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzagr;->d:I

    aget v1, v3, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    :cond_1a
    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzen;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzags;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    return-object v0
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->c:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagr;->e:Z

    return-void
.end method

.method public final d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0xfe01

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v3

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_d

    .line 2
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagr;->e:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    .line 4
    :goto_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->e:Z

    const/4 v2, 0x1

    if-nez v0, :cond_99

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->c:I

    if-gez v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzags;->c(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    .line 5
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzags;->b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_4d

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzags;->d:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzags;->a:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v0

    if-nez v0, :cond_42

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzagr;->f(I)I

    move-result v0

    add-int/2addr v3, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->d:I

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 7
    :goto_43
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzzy;->e(Lcom/google/android/gms/internal/ads/zzzv;I)Z

    move-result v3

    if-nez v3, :cond_4a

    return v1

    :cond_4a
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->c:I

    goto :goto_4e

    :cond_4d
    :goto_4d
    return v1

    .line 8
    :cond_4e
    :goto_4e
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagr;->f(I)I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzagr;->c:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzagr;->d:I

    add-int/2addr v3, v4

    if-lez v0, :cond_8e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v5

    add-int/2addr v5, v0

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->H(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v4

    .line 10
    invoke-static {p1, v5, v4, v0}, Lcom/google/android/gms/internal/ads/zzzy;->d(Lcom/google/android/gms/internal/ads/zzzv;[BII)Z

    move-result v4

    if-nez v4, :cond_74

    return v1

    :cond_74
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzagr;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v5

    add-int/2addr v5, v0

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzags;->f:[I

    add-int/lit8 v4, v3, -0x1

    .line 12
    aget v0, v0, v4

    const/16 v4, 0xff

    if-eq v0, v4, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v2, 0x0

    :goto_8c
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzagr;->e:Z

    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzags;->c:I

    if-ne v3, v0, :cond_95

    const/4 v3, -0x1

    :cond_95
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzagr;->c:I

    goto/16 :goto_d

    :cond_99
    return v2
.end method
