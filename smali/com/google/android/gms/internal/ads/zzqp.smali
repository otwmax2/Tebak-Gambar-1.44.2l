###### Class com.google.android.gms.internal.ads.zzqp (com.google.android.gms.internal.ads.zzqp)
.class final Lcom/google/android/gms/internal/ads/zzqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(J)J
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->a:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->b:J

    const-wide/16 v4, -0x211

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    div-long/2addr v2, p1

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaf;)J
    .registers 4

    .line 1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzqp;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzgr;)J
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->a:J

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->c:Z

    if-eqz v0, :cond_13

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    return-wide p1

    :cond_13
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1a
    const/4 v5, 0x4

    if-ge v1, v5, :cond_29

    shl-int/lit8 v4, v4, 0x8

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 4
    :cond_29
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaao;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_43

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->c:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->b:J

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->a:J

    const-string p1, "C2Mp3TimestampTracker"

    const-string v0, "MPEG audio header is invalid."

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    return-wide p1

    .line 6
    :cond_43
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqp;->d(J)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->b:J

    return-wide p1
.end method

.method public final c()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->c:Z

    return-void
.end method
