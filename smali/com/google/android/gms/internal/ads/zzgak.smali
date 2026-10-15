###### Class com.google.android.gms.internal.ads.zzgak (com.google.android.gms.internal.ads.zzgak)
.class abstract Lcom/google/android/gms/internal/ads/zzgak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field a:[I

.field private final b:I


# direct methods
.method public constructor <init>([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgag;->d([B)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->a:[I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgak;->b:I

    return-void

    .line 3
    :cond_11
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgak;->a()I

    move-result v1

    if-ne v0, v1, :cond_2c

    .line 2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    div-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    :goto_e
    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_2b

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgak;->b:I

    add-int/2addr v4, v2

    .line 3
    invoke-virtual {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzgak;->c([BI)Ljava/nio/ByteBuffer;

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    const/16 v5, 0x40

    if-ne v2, v3, :cond_25

    rem-int/lit8 v3, v0, 0x40

    .line 4
    invoke-static {p2, p3, v4, v3}, Lcom/google/android/gms/internal/ads/zzgmv;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_28

    .line 5
    :cond_25
    invoke-static {p2, p3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgmv;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2b
    return-void

    .line 6
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgak;->a()I

    move-result p1

    .line 7
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The nonce length (in bytes) must be "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_48

    :goto_47
    throw p2

    :goto_48
    goto :goto_47
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b([II)[I
.end method

.method final c([BI)Ljava/nio/ByteBuffer;
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgag;->d([B)[I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgak;->b([II)[I

    move-result-object p1

    .line 2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgag;->c([I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    const/16 v2, 0x10

    if-ge v1, v2, :cond_21

    .line 4
    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/16 p2, 0x40

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object p2
.end method

.method public final d(Ljava/nio/ByteBuffer;[B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p3

    if-lt v0, v1, :cond_f

    .line 2
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgak;->f([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e([BLjava/nio/ByteBuffer;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgak;->f([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
