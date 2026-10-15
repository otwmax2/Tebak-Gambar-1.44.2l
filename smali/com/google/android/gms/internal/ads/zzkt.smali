###### Class com.google.android.gms.internal.ads.zzkt (com.google.android.gms.internal.ads.zzkt)
.class public final Lcom/google/android/gms/internal/ads/zzkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjq;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzdm;

.field private p:Z

.field private q:J

.field private r:J

.field private s:Lcom/google/android/gms/internal/ads/zzby;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdm;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->o:Lcom/google/android/gms/internal/ads/zzdm;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzby;->d:Lcom/google/android/gms/internal/ads/zzby;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->s:Lcom/google/android/gms/internal/ads/zzby;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzby;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->s:Lcom/google/android/gms/internal/ads/zzby;

    return-object v0
.end method

.method public final b(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->q:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->p:Z

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->r:J

    :cond_c
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->p:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->r:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->p:Z

    :cond_d
    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->p:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zza()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzkt;->b(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->p:Z

    :cond_e
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzby;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->p:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zza()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzkt;->b(J)V

    :cond_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->s:Lcom/google/android/gms/internal/ads/zzby;

    return-void
.end method

.method public final zza()J
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->q:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkt;->p:Z

    if-eqz v2, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzkt;->r:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkt;->s:Lcom/google/android/gms/internal/ads/zzby;

    .line 2
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzby;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v2

    goto :goto_20

    .line 4
    :cond_1c
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzby;->a(J)J

    move-result-wide v2

    :goto_20
    add-long/2addr v0, v2

    :cond_21
    return-wide v0
.end method
