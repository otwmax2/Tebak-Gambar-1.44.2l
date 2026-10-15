###### Class com.google.android.gms.internal.ads.zzaex (com.google.android.gms.internal.ads.zzaex)
.class final Lcom/google/android/gms/internal/ads/zzaex;
.super Lcom/google/android/gms/internal/ads/zzzj;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafe;


# direct methods
.method public constructor <init>(JJLcom/google/android/gms/internal/ads/zzaan;Z)V
    .registers 15

    .line 1
    iget v5, p5, Lcom/google/android/gms/internal/ads/zzaan;->f:I

    iget v6, p5, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzzj;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public final d(J)J
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzj;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method
