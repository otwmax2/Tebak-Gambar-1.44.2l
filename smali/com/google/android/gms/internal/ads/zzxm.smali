###### Class com.google.android.gms.internal.ads.zzxm (com.google.android.gms.internal.ads.zzxm)
.class final Lcom/google/android/gms/internal/ads/zzxm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private final g:[Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->g:[Z

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    :cond_9
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxm;->f:J

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->f:J

    return-wide v0
.end method

.method public final c(J)V
    .registers 14

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->d:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_d

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxm;->a:J

    goto :goto_5b

    :cond_d
    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->a:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->f:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxm;->e:J

    goto :goto_5b

    :cond_1c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxm;->c:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzxm;->b:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xf

    rem-long/2addr v0, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    cmp-long v10, v6, v8

    long-to-int v1, v0

    if-gtz v10, :cond_4d

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzxm;->e:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzxm;->e:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzxm;->f:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzxm;->f:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->g:[Z

    .line 2
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_5b

    const/4 v4, 0x0

    .line 3
    aput-boolean v4, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->h:I

    goto :goto_5b

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->g:[Z

    .line 4
    aget-boolean v4, v0, v1

    if-nez v4, :cond_5b

    const/4 v4, 0x1

    .line 5
    aput-boolean v4, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->h:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->h:I

    .line 6
    :cond_5b
    :goto_5b
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->d:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxm;->c:J

    return-void
.end method

.method public final d()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->h:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxm;->g:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public final e()Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxm;->g:[Z

    const-wide/16 v3, -0x1

    add-long/2addr v0, v3

    const-wide/16 v3, 0xf

    rem-long/2addr v0, v3

    long-to-int v1, v0

    aget-boolean v0, v2, v1

    return v0
.end method

.method public final f()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->d:J

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->h:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
