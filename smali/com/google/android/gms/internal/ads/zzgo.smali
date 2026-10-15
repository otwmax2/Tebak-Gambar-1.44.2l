###### Class com.google.android.gms.internal.ads.zzgo (com.google.android.gms.internal.ads.zzgo)
.class public final Lcom/google/android/gms/internal/ads/zzgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Landroid/media/MediaCodec$CryptoInfo;

.field private final j:Lcom/google/android/gms/internal/ads/zzgn;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_17

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/zzgm;)V

    move-object v2, v1

    :cond_17
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgo;->j:Lcom/google/android/gms/internal/ads/zzgn;

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final b(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->d:[I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->d:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->d:[I

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-void
.end method

.method public final c(I[I[I[B[BIII)V
    .registers 10

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->f:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgo;->d:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgo;->e:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgo;->b:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgo;->a:[B

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzgo;->c:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzgo;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzgo;->h:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 2
    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 3
    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 4
    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 5
    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 6
    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 7
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_2c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->j:Lcom/google/android/gms/internal/ads/zzgn;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1, p7, p8}, Lcom/google/android/gms/internal/ads/zzgn;->a(Lcom/google/android/gms/internal/ads/zzgn;II)V

    :cond_2c
    return-void
.end method
