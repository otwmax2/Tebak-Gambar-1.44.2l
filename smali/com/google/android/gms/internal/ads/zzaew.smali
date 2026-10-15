###### Class com.google.android.gms.internal.ads.zzaew (com.google.android.gms.internal.ads.zzaew)
.class final Lcom/google/android/gms/internal/ads/zzaew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final d:[J


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaew;->d:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->a:[B

    return-void
.end method

.method public static b(I)I
    .registers 7

    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_14

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaew;->d:[J

    aget-wide v2, v1, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_1

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    return v0
.end method

.method public static c([BIZ)J
    .registers 12

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    if-eqz p2, :cond_13

    add-int/lit8 p2, p1, -0x1

    .line 1
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaew;->d:[J

    aget-wide v5, v4, p2

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v0, v5

    :cond_13
    const/4 p2, 0x1

    :goto_14
    if-ge p2, p1, :cond_21

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    .line 2
    aget-byte v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_21
    return-wide v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->c:I

    return v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzv;ZZI)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->a:[B

    invoke-interface {p1, v0, v3, v2, p2}, Lcom/google/android/gms/internal/ads/zzzv;->g([BIIZ)Z

    move-result p2

    if-nez p2, :cond_12

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaew;->a:[B

    aget-byte p2, p2, v3

    and-int/lit16 p2, p2, 0xff

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaew;->b(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaew;->c:I

    if-eq p2, v1, :cond_23

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaew;->b:I

    goto :goto_2b

    .line 4
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No valid varint length mask found"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaew;->c:I

    if-le p2, p4, :cond_34

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaew;->b:I

    const-wide/16 p1, -0x2

    return-wide p1

    :cond_34
    if-eq p2, v2, :cond_3e

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaew;->a:[B

    add-int/2addr p2, v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    invoke-virtual {p1, p4, v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    :cond_3e
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaew;->b:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaew;->a:[B

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaew;->c:I

    .line 7
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaew;->c([BIZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->c:I

    return-void
.end method
