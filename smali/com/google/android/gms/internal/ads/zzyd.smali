###### Class com.google.android.gms.internal.ads.zzyd (com.google.android.gms.internal.ads.zzyd)
.class public final Lcom/google/android/gms/internal/ads/zzyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzxn;

.field private final b:Lcom/google/android/gms/internal/ads/zzxz;

.field private final c:Lcom/google/android/gms/internal/ads/zzyc;

.field private d:Z

.field private e:Landroid/view/Surface;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyb;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzya;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :cond_1f
    :goto_1f
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->b:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz v1, :cond_27

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyc;->a()Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v0

    :cond_27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->c:Lcom/google/android/gms/internal/ads/zzyc;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->l:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->f:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->i:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->j:I

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/zzyd;Landroid/view/Display;)V
    .registers 6

    if-eqz p1, :cond_1d

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 1
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->k:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->l:J

    return-void

    :cond_1d
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->l:J

    return-void
.end method

.method private final k()V
    .registers 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->e:Landroid/view/Surface;

    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->j:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->h:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_1d

    :cond_18
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->h:F

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzxy;->a(Landroid/view/Surface;F)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private final l()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->m:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->p:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->n:J

    return-void
.end method

.method private final m()V
    .registers 10

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->e:Landroid/view/Surface;

    if-nez v0, :cond_b

    goto :goto_6f

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxn;->g()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxn;->a()F

    move-result v0

    goto :goto_1c

    .line 3
    :cond_1a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->f:F

    .line 4
    :goto_1c
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->g:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_23

    return-void

    :cond_23
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_58

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_58

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxn;->g()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxn;->d()J

    move-result-wide v5

    const-wide v7, 0x12a05f200L

    cmp-long v1, v5, v7

    if-ltz v1, :cond_4b

    const v2, 0x3ca3d70a    # 0.02f

    :cond_4b
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->g:F

    sub-float v1, v0, v1

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_65

    goto :goto_66

    :cond_58
    cmpl-float v2, v0, v5

    if-nez v2, :cond_6a

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxn;->b()I

    move-result v2

    if-lt v2, v1, :cond_65

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    :goto_66
    if-eqz v3, :cond_69

    goto :goto_6a

    :cond_69
    return-void

    .line 9
    :cond_6a
    :goto_6a
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->g:F

    .line 10
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzyd;->n(Z)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private final n(Z)V
    .registers 6

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->e:Landroid/view/Surface;

    if-eqz v0, :cond_30

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->j:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_11

    goto :goto_30

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->g:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_22

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->i:F

    mul-float v2, v2, v1

    :cond_22
    if-nez p1, :cond_2b

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->h:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2b

    return-void

    :cond_2b
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->h:F

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzxy;->a(Landroid/view/Surface;F)V

    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public final a(J)J
    .registers 14

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxn;->g()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxn;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->q:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzyd;->m:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzyd;->p:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzyd;->i:F

    long-to-float v0, v0

    div-float/2addr v0, v4

    float-to-long v0, v0

    add-long/2addr v2, v0

    sub-long v0, p1, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x1312d00

    cmp-long v6, v0, v4

    if-lez v6, :cond_36

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->l()V

    goto :goto_37

    :cond_36
    move-wide p1, v2

    :cond_37
    :goto_37
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->n:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->o:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->c:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz v0, :cond_74

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_4d

    goto :goto_74

    :cond_4d
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzyc;->o:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_54

    return-wide p1

    :cond_54
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->k:J

    sub-long v4, p1, v0

    .line 5
    div-long/2addr v4, v2

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_63

    sub-long v2, v0, v2

    goto :goto_67

    :cond_63
    add-long/2addr v2, v0

    move-wide v9, v0

    move-wide v0, v2

    move-wide v2, v9

    :goto_67
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzyd;->l:J

    sub-long v6, v0, p1

    sub-long/2addr p1, v2

    cmp-long v8, v6, p1

    if-gez v8, :cond_71

    goto :goto_72

    :cond_71
    move-wide v0, v2

    :goto_72
    sub-long/2addr v0, v4

    return-wide v0

    :cond_74
    :goto_74
    return-wide p1
.end method

.method public final c(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->f:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxn;->f()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->m()V

    return-void
.end method

.method public final d(J)V
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->n:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->p:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->o:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->q:J

    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->m:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->a:Lcom/google/android/gms/internal/ads/zzxn;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxn;->e(J)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->m()V

    return-void
.end method

.method public final e(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->i:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->l()V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyd;->n(Z)V

    return-void
.end method

.method public final f()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->l()V

    return-void
.end method

.method public final g()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->b:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->c:Lcom/google/android/gms/internal/ads/zzyc;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyc;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->b:Lcom/google/android/gms/internal/ads/zzxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzxx;-><init>(Lcom/google/android/gms/internal/ads/zzyd;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxz;->a(Lcom/google/android/gms/internal/ads/zzxx;)V

    :cond_1c
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyd;->n(Z)V

    return-void
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->b:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->c:Lcom/google/android/gms/internal/ads/zzyc;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyc;->c()V

    .line 4
    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->k()V

    return-void
.end method

.method public final i(Landroid/view/Surface;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzxv;

    const/4 v1, 0x1

    if-ne v1, v0, :cond_6

    const/4 p1, 0x0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->e:Landroid/view/Surface;

    if-ne v0, p1, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->k()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->e:Landroid/view/Surface;

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzyd;->n(Z)V

    return-void
.end method

.method public final j(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->j:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->j:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyd;->n(Z)V

    return-void
.end method
