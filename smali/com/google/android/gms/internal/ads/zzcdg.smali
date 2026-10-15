###### Class com.google.android.gms.internal.ads.zzcdg (com.google.android.gms.internal.ads.zzcdg)
.class public final Lcom/google/android/gms/internal/ads/zzcdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzwt;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Z


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzwt;-><init>(ZI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->a:Lcom/google/android/gms/internal/ads/zzwt;

    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->b:J

    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->c:J

    const-wide/32 v0, 0x2625a0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->d:J

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->e:J

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdg;->h(Z)V

    return-void
.end method

.method public final b(JFZJ)Z
    .registers 8

    if-eqz p4, :cond_5

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcdg;->e:J

    goto :goto_7

    :cond_5
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcdg;->d:J

    :goto_7
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_14

    cmp-long p5, p1, p3

    if-ltz p5, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdg;->h(Z)V

    return-void
.end method

.method public final e([Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzur;[Lcom/google/android/gms/internal/ads/zzwe;)V
    .registers 7

    const/4 p2, 0x0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcdg;->f:I

    :goto_3
    array-length v0, p1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_21

    .line 2
    aget-object v0, p3, p2

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->f:I

    .line 3
    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkn;->zzb()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    const/high16 v1, 0x7d00000

    goto :goto_1b

    :cond_19
    const/high16 v1, 0xc80000

    :goto_1b
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->f:I

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->a:Lcom/google/android/gms/internal/ads/zzwt;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcdg;->f:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzwt;->f(I)V

    return-void
.end method

.method public final f(JJF)Z
    .registers 9

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->c:J

    const/4 p5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p3, p1

    if-lez v2, :cond_b

    const/4 p1, 0x0

    goto :goto_14

    :cond_b
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->b:J

    cmp-long v2, p3, p1

    if-gez v2, :cond_13

    const/4 p1, 0x2

    goto :goto_14

    :cond_13
    const/4 p1, 0x1

    :goto_14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdg;->a:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwt;->a()I

    move-result p2

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzcdg;->f:I

    if-eq p1, p5, :cond_28

    if-ne p1, v0, :cond_27

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->g:Z

    if-eqz p1, :cond_27

    if-ge p2, p3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :cond_28
    :goto_28
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->g:Z

    return v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzwt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->a:Lcom/google/android/gms/internal/ads/zzwt;

    return-object v0
.end method

.method final h(Z)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->f:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->g:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->a:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwt;->e()V

    :cond_c
    return-void
.end method

.method public final declared-synchronized i(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->d:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->e:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->c:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->b:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzb()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdg;->h(Z)V

    return-void
.end method
