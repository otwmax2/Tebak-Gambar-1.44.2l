###### Class com.google.android.gms.internal.ads.zzdh (com.google.android.gms.internal.ads.zzdh)
.class public final Lcom/google/android/gms/internal/ads/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzde;


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Lcom/google/android/gms/internal/ads/zzdc;

.field private f:Lcom/google/android/gms/internal/ads/zzdc;

.field private g:Lcom/google/android/gms/internal/ads/zzdc;

.field private h:Lcom/google/android/gms/internal/ads/zzdc;

.field private i:Z

.field private j:Lcom/google/android/gms/internal/ads/zzdg;

.field private k:Ljava/nio/ByteBuffer;

.field private l:Ljava/nio/ShortBuffer;

.field private m:Ljava/nio/ByteBuffer;

.field private n:J

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->c:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->d:F

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->f:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->g:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->h:Lcom/google/android/gms/internal/ads/zzdc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->k:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdh;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->g:Lcom/google/android/gms/internal/ads/zzdc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->f:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->h:Lcom/google/android/gms/internal/ads/zzdc;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->i:Z

    if-eqz v2, :cond_25

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdg;

    .line 2
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzdh;->c:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzdh;->d:F

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdg;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    goto :goto_2c

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    if-eqz v0, :cond_2c

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdg;->c()V

    .line 4
    :cond_2c
    :goto_2c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->n:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->o:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->p:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdd;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->e:Lcom/google/android/gms/internal/ads/zzdc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdc;

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->f:Lcom/google/android/gms/internal/ads/zzdc;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->i:Z

    return-object v2

    .line 5
    :cond_1b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    throw v0
.end method

.method public final c()V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->c:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->d:F

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->f:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->g:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->h:Lcom/google/android/gms/internal/ads/zzdc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->k:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->n:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->o:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->p:Z

    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdg;->e()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->p:Z

    return-void
.end method

.method public final e()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->f:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_31

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->c:F

    const/high16 v3, -0x40800000    # -1.0f

    add-float/2addr v0, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v4

    if-gez v0, :cond_30

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->d:F

    add-float/2addr v0, v3

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->f:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdh;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    if-ne v0, v3, :cond_2f

    goto :goto_31

    :cond_2f
    return v2

    :cond_30
    const/4 v1, 0x1

    :cond_31
    :goto_31
    return v1
.end method

.method public final f()Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->p:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdg;->a()I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    return v1

    :cond_12
    :goto_12
    const/4 v1, 0x0

    :cond_13
    return v1
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdh;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdh;->n:J

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdg;->f(Ljava/nio/ShortBuffer;)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final h(J)J
    .registers 18

    move-object v0, p0

    .line 1
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzdh;->o:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_35

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdh;->n:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdg;->b()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v1, v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdh;->h:Lcom/google/android/gms/internal/ads/zzdc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdh;->g:Lcom/google/android/gms/internal/ads/zzdc;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    if-ne v1, v2, :cond_28

    move-wide/from16 v1, p1

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v1

    goto :goto_34

    :cond_28
    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    .line 5
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v1

    :goto_34
    return-wide v1

    .line 6
    :cond_35
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdh;->c:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public final i(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->i:Z

    :cond_b
    return-void
.end method

.method public final j(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->c:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->i:Z

    :cond_b
    return-void
.end method

.method public final zzb()Ljava/nio/ByteBuffer;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->j:Lcom/google/android/gms/internal/ads/zzdg;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdg;->a()I

    move-result v1

    if-lez v1, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_27

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->k:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->l:Ljava/nio/ShortBuffer;

    goto :goto_31

    .line 4
    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->k:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->l:Ljava/nio/ShortBuffer;

    .line 6
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    :goto_31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->l:Ljava/nio/ShortBuffer;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdg;->d(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->o:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->k:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->m:Ljava/nio/ByteBuffer;

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method
