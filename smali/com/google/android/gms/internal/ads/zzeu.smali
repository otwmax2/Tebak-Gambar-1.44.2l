###### Class com.google.android.gms.internal.ads.zzeu (com.google.android.gms.internal.ads.zzeu)
.class public final Lcom/google/android/gms/internal/ads/zzeu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private final d:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeu;->d:Ljava/lang/ThreadLocal;

    const-wide/16 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeu;->f(J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)J
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2c

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->a:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_33

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_26
    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->b:J

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_2c
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzeu;->c:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->b:J
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_33

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(J)J
    .registers 15

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 1
    monitor-exit p0

    return-wide v0

    :cond_c
    :try_start_c
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeu;->c:J

    const-wide/32 v4, 0xf4240

    const-wide/32 v6, 0x15f90

    cmp-long v8, v2, v0

    if-eqz v8, :cond_41

    mul-long v2, v2, v6

    div-long/2addr v2, v4

    const-wide v0, 0x100000000L

    add-long/2addr v0, v2

    const-wide v8, 0x200000000L

    div-long/2addr v0, v8

    const-wide/16 v10, -0x1

    add-long/2addr v10, v0

    mul-long v10, v10, v8

    add-long/2addr v10, p1

    mul-long v0, v0, v8

    add-long/2addr p1, v0

    sub-long v0, p1, v2

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v8, v2, v0

    if-gez v8, :cond_41

    move-wide p1, v10

    :cond_41
    mul-long p1, p1, v4

    div-long/2addr p1, v6

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeu;->a(J)J

    move-result-wide p1
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_4a

    monitor-exit p0

    return-wide p1

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    goto :goto_18

    :cond_16
    monitor-exit p0

    return-wide v0

    :cond_18
    :goto_18
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    monitor-exit p0

    return-wide v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeu;->b:J

    add-long/2addr v0, v2

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeu;->c()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeu;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzeu;->a:J

    const-wide v0, 0x7fffffffffffffffL

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v0

    if-nez v4, :cond_14

    const-wide/16 p1, 0x0

    goto :goto_15

    :cond_14
    move-wide p1, v2

    :goto_15
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzeu;->b:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeu;->c:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
