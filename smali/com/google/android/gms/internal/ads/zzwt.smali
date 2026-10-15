###### Class com.google.android.gms.internal.ads.zzwt (com.google.android.gms.internal.ads.zzwt)
.class public final Lcom/google/android/gms/internal/ads/zzwt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[Lcom/google/android/gms/internal/ads/zzwm;


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I

    const/16 p1, 0x64

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzwm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwt;->d:[Lcom/google/android/gms/internal/ads/zzwm;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    const/high16 v1, 0x10000

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/zzwm;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I

    if-lez v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwt;->d:[Lcom/google/android/gms/internal/ads/zzwm;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I

    aget-object v2, v1, v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_38

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    :try_start_17
    aput-object v3, v1, v0

    goto :goto_2b

    :cond_1a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwm;

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 4
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzwm;-><init>([BI)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwt;->d:[Lcom/google/android/gms/internal/ads/zzwm;

    .line 5
    array-length v3, v1
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_38

    if-gt v0, v3, :cond_2d

    .line 6
    :goto_2b
    monitor-exit p0

    return-object v2

    :cond_2d
    add-int/2addr v3, v3

    .line 7
    :try_start_2e
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzwm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->d:[Lcom/google/android/gms/internal/ads/zzwm;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v2

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/zzwm;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->d:[Lcom/google/android/gms/internal/ads/zzwm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I

    aput-object p1, v0, v1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/zzwn;)V
    .registers 5

    monitor-enter p0

    :goto_1
    if-eqz p1, :cond_1c

    .line 1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->d:[Lcom/google/android/gms/internal/ads/zzwm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwn;->a()Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwn;->d()Lcom/google/android/gms/internal/ads/zzwn;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method public final declared-synchronized e()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzwt;->f(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(I)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->a:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwt;->a:I

    if-ge p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwt;->g()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    monitor-exit p0

    return-void

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwt;->a:I

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwt;->b:I

    sub-int/2addr v1, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_21

    if-lt v0, v1, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwt;->d:[Lcom/google/android/gms/internal/ads/zzwm;

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->c:I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
