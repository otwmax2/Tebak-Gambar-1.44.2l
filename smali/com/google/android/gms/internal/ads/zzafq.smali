###### Class com.google.android.gms.internal.ads.zzafq (com.google.android.gms.internal.ads.zzafq)
.class final Lcom/google/android/gms/internal/ads/zzafq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafq;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzafq;->b:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzafq;->c:I

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzafq;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzafq;->a:I

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzafq;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzafq;->c:I

    return p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzafq;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->b:J

    return-wide v0
.end method
