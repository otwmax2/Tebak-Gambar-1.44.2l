###### Class com.google.android.gms.internal.ads.zzet (com.google.android.gms.internal.ads.zzet)
.class public final Lcom/google/android/gms/internal/ads/zzet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:[J

.field private b:[Ljava/lang/Object;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->a:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    return-void
.end method

.method private final f()Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    .line 2
    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 3
    aput-object v4, v0, v2

    add-int/2addr v2, v1

    .line 4
    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    return-object v3
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->f()Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(J)Ljava/lang/Object;
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    if-lez v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->a:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    aget-wide v2, v1, v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_15

    goto :goto_1a

    .line 2
    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->f()Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1c

    goto :goto_2

    .line 3
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception p1

    monitor-exit p0

    goto :goto_20

    :goto_1f
    throw p1

    :goto_20
    goto :goto_1f
.end method

.method public final declared-synchronized d(JLjava/lang/Object;)V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    if-lez v0, :cond_19

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    array-length v0, v0

    rem-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->a:[J

    .line 2
    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_19

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->e()V

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    .line 4
    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    if-ge v1, v0, :cond_21

    goto :goto_4d

    :cond_21
    add-int v1, v0, v0

    .line 5
    new-array v2, v1, [J

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    sub-int/2addr v0, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzet;->a:[J

    const/4 v5, 0x0

    .line 7
    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    .line 8
    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    if-lez v3, :cond_47

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzet;->a:[J

    .line 9
    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    .line 10
    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_47
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->a:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    .line 11
    :goto_4d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    .line 12
    array-length v3, v2

    rem-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzet;->a:[J

    .line 13
    aput-wide p1, v3, v0

    .line 14
    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_62

    monitor-exit p0

    return-void

    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->d:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
