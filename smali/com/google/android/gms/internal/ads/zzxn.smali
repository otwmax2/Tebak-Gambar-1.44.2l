###### Class com.google.android.gms.internal.ads.zzxn (com.google.android.gms.internal.ads.zzxn)
.class final Lcom/google/android/gms/internal/ads/zzxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzxm;

.field private b:Lcom/google/android/gms/internal/ads/zzxm;

.field private c:Z

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->d:J

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxm;->a()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_1a
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->e:I

    return v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->a()J

    move-result-wide v0

    return-wide v0

    :cond_f
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->b()J

    move-result-wide v0

    return-wide v0

    :cond_f
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final e(J)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxm;->c(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxn;->c:Z

    goto :goto_3c

    .line 3
    :cond_12
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzxn;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->c:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->e()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzxn;->d:J

    .line 6
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzxm;->c(J)V

    :cond_35
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxn;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxm;->c(J)V

    .line 8
    :cond_3c
    :goto_3c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->c:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->f()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxn;->c:Z

    :cond_52
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxn;->d:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxm;->f()Z

    move-result p1

    if-eqz p1, :cond_5d

    goto :goto_61

    :cond_5d
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzxn;->e:I

    add-int/lit8 v2, p1, 0x1

    :goto_61
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzxn;->e:I

    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->b:Lcom/google/android/gms/internal/ads/zzxm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxn;->d:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->e:I

    return-void
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->a:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxm;->f()Z

    move-result v0

    return v0
.end method
