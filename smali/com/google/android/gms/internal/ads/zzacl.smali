###### Class com.google.android.gms.internal.ads.zzacl (com.google.android.gms.internal.ads.zzacl)
.class final Lcom/google/android/gms/internal/ads/zzacl;
.super Lcom/google/android/gms/internal/ads/zzaai;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzv;J)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaai;-><init>(Lcom/google/android/gms/internal/ads/zzzv;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 2
    :goto_e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzacl;->b:J

    return-void
.end method


# virtual methods
.method public final b()J
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzaai;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacl;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzaai;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacl;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()J
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzaai;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacl;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
