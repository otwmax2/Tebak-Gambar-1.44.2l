###### Class com.google.android.gms.internal.ads.zzbyi (com.google.android.gms.internal.ads.zzbyi)
.class final Lcom/google/android/gms/internal/ads/zzbyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:J

.field private volatile c:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyh;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyi;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyi;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbyi;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2a

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzbyi;->b:J

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->z5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v5, v0

    if-gtz v3, :cond_2a

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->c:I

    .line 5
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_4a

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyi;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_36
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->c:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3d

    .line 7
    monitor-exit v3

    return-void

    :cond_3d
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbyi;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->c:I

    if-ne v2, v4, :cond_45

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->b:J

    .line 8
    :cond_45
    monitor-exit v3

    return-void

    :catchall_47
    move-exception v0

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_47

    throw v0

    :catchall_4a
    move-exception v0

    .line 9
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method
