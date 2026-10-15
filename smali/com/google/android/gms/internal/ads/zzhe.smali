###### Class com.google.android.gms.internal.ads.zzhe (com.google.android.gms.internal.ads.zzhe)
.class public final Lcom/google/android/gms/internal/ads/zzhe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:F

.field private j:F

.field private k:F

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method synthetic constructor <init>(FFJFJJFLcom/google/android/gms/internal/ads/zzhd;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzhe;->a:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzhe;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->c:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->d:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->f:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->g:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhe;->j:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhe;->i:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhe;->k:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->l:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->e:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->m:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->n:J

    return-void
.end method

.method private static f(JJF)J
    .registers 5

    long-to-float p0, p0

    long-to-float p1, p2

    const p2, 0x3f7fbe77    # 0.999f

    mul-float p0, p0, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private final g()V
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhe;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhe;->d:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_12

    move-wide v0, v4

    :cond_12
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhe;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-gez v6, :cond_1d

    move-wide v0, v4

    :cond_1d
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhe;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2a

    cmp-long v6, v0, v4

    if-lez v6, :cond_2a

    move-wide v0, v4

    goto :goto_2a

    :cond_29
    move-wide v0, v2

    :cond_2a
    :goto_2a
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhe;->e:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_31

    return-void

    :cond_31
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhe;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhe;->m:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhe;->n:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhe;->l:J

    return-void
.end method


# virtual methods
.method public final a(JJ)F
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->c:J

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-eqz v6, :cond_dd

    sub-long v1, p1, p3

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhe;->m:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_1e

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->m:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->n:J

    goto :goto_38

    :cond_1e
    const v8, 0x3f7fbe77    # 0.999f

    .line 2
    invoke-static {v6, v7, v1, v2, v8}, Lcom/google/android/gms/internal/ads/zzhe;->f(JJF)J

    move-result-wide v6

    .line 3
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhe;->m:J

    sub-long/2addr v1, v6

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhe;->n:J

    invoke-static {v6, v7, v1, v2, v8}, Lcom/google/android/gms/internal/ads/zzhe;->f(JJF)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->n:J

    .line 5
    :goto_38
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->l:J

    const-wide/16 v6, 0x3e8

    cmp-long v8, v1, v4

    if-eqz v8, :cond_4f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzhe;->l:J

    sub-long/2addr v1, v8

    cmp-long v8, v1, v6

    if-ltz v8, :cond_4c

    goto :goto_4f

    .line 6
    :cond_4c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->k:F

    return v1

    .line 7
    :cond_4f
    :goto_4f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->l:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->m:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzhe;->n:J

    const-wide/16 v10, 0x3

    mul-long v8, v8, v10

    add-long v14, v1, v8

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    const v8, 0x33d6bf95    # 1.0E-7f

    const/high16 v9, -0x40800000    # -1.0f

    cmp-long v10, v1, v14

    if-lez v10, :cond_9f

    .line 8
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzhe;->k:F

    add-float/2addr v4, v9

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzhe;->i:F

    add-float/2addr v5, v9

    const/4 v6, 0x3

    new-array v7, v6, [J

    const/4 v9, 0x0

    aput-wide v14, v7, v9

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzhe;->e:J

    const/4 v12, 0x1

    aput-wide v10, v7, v12

    const/4 v10, 0x2

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    long-to-float v1, v1

    mul-float v5, v5, v1

    mul-float v4, v4, v1

    float-to-long v1, v4

    float-to-long v4, v5

    add-long/2addr v1, v4

    sub-long/2addr v13, v1

    aput-wide v13, v7, v10

    aget-wide v1, v7, v9

    :goto_8f
    if-ge v12, v6, :cond_9c

    aget-wide v4, v7, v12

    cmp-long v9, v4, v1

    if-gtz v9, :cond_98

    goto :goto_99

    :cond_98
    move-wide v1, v4

    :goto_99
    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    :cond_9c
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    goto :goto_c0

    :cond_9f
    const/4 v1, 0x0

    .line 9
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhe;->k:F

    add-float/2addr v2, v9

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    float-to-long v1, v1

    sub-long v10, p1, v1

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    .line 11
    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhe;->g:J

    cmp-long v9, v6, v4

    if-eqz v9, :cond_c0

    cmp-long v4, v1, v6

    if-lez v4, :cond_c0

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    move-wide v1, v6

    :cond_c0
    :goto_c0
    sub-long v1, p1, v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhe;->a:J

    cmp-long v9, v4, v6

    if-gez v9, :cond_cf

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzhe;->k:F

    goto :goto_dd

    :cond_cf
    long-to-float v1, v1

    mul-float v1, v1, v8

    add-float/2addr v1, v3

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhe;->j:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzhe;->i:F

    .line 13
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->A(FFF)F

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzhe;->k:F

    :cond_dd
    :goto_dd
    return v3
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    return-wide v0
.end method

.method public final c()V
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    return-void

    :cond_c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhe;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhe;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-lez v6, :cond_1d

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhe;->h:J

    :cond_1d
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhe;->l:J

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzaw;)V
    .registers 6

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaw;->a:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhe;->c:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhe;->f:J

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhe;->g:J

    const p1, 0x3f7851ec    # 0.97f

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->j:F

    const p1, 0x3f83d70a    # 1.03f

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->i:F

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhe;->g()V

    return-void
.end method

.method public final e(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->d:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhe;->g()V

    return-void
.end method
