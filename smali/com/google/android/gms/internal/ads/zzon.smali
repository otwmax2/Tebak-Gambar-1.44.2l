###### Class com.google.android.gms.internal.ads.zzon (com.google.android.gms.internal.ads.zzon)
.class final Lcom/google/android/gms/internal/ads/zzon;
.super Lcom/google/android/gms/internal/ads/zzdf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private i:[I

.field private j:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdf;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzon;->j:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdf;->b:Lcom/google/android/gms/internal/ads/zzdc;

    .line 4
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdc;->d:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdf;->c:Lcom/google/android/gms/internal/ads/zzdc;

    .line 5
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdc;->d:I

    mul-int v3, v3, v4

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdf;->i(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_1e
    if-ge v1, v2, :cond_38

    array-length v4, v0

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_32

    .line 7
    aget v6, v0, v5

    add-int/2addr v6, v6

    add-int/2addr v6, v1

    .line 8
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_32
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdf;->b:Lcom/google/android/gms/internal/ads/zzdc;

    .line 9
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdc;->d:I

    add-int/2addr v1, v4

    goto :goto_1e

    .line 10
    :cond_38
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdd;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzon;->i:[I

    if-nez v0, :cond_7

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    return-object p1

    .line 2
    :cond_7
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3c

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    const/4 v3, 0x0

    :goto_17
    array-length v6, v0

    if-ge v3, v6, :cond_2f

    .line 4
    aget v6, v0, v3

    .line 5
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    if-ge v6, v7, :cond_29

    if-eq v6, v3, :cond_24

    const/4 v6, 0x1

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    :goto_25
    or-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    throw v0

    :cond_2f
    if-eqz v1, :cond_39

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdc;

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    invoke-direct {v0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(III)V

    goto :goto_3b

    :cond_39
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    :goto_3b
    return-object v0

    .line 8
    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    goto :goto_43

    :goto_42
    throw v0

    :goto_43
    goto :goto_42
.end method

.method protected final j()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzon;->i:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzon;->j:[I

    return-void
.end method

.method protected final l()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzon;->j:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzon;->i:[I

    return-void
.end method

.method public final n([I)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzon;->i:[I

    return-void
.end method
