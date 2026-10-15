###### Class com.google.android.gms.internal.ads.zzeyb (com.google.android.gms.internal.ads.zzeyb)
.class public final Lcom/google/android/gms/internal/ads/zzeyb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/common/util/Clock;

.field private final b:Ljava/lang/Object;

.field private volatile c:J

.field private volatile d:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->c:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->a:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final e()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->a:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyb;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_28

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeyb;->c:J

    .line 2
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbar;->z5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v5

    .line 4
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_28

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    .line 5
    :cond_28
    monitor-exit v2

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private final f(II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeyb;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->a:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyb;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    if-eq v3, p1, :cond_12

    .line 3
    monitor-exit v2

    return-void

    :cond_12
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1b

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->c:J

    .line 4
    :cond_1b
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception p1

    .line 5
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeyb;->f(II)V

    return-void
.end method

.method public final b(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_8

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeyb;->f(II)V

    return-void

    .line 2
    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzeyb;->f(II)V

    return-void
.end method

.method public final c()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeyb;->e()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2
    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final d()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeyb;->e()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2
    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
