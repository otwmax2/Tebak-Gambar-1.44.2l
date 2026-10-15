###### Class com.google.android.gms.internal.ads.zzuw (com.google.android.gms.internal.ads.zzuw)
.class public final Lcom/google/android/gms/internal/ads/zzuw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuw;->a:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzuw;->b:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzuw;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzuw;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzuw;->a:J

    .line 3
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzuw;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1d

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzuw;->b:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzuw;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuw;->a:J

    long-to-int v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzuw;->b:J

    long-to-int v0, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
