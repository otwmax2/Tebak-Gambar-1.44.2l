###### Class com.google.android.gms.internal.ads.zzblq (com.google.android.gms.internal.ads.zzblq)
.class public final Lcom/google/android/gms/internal/ads/zzblq;
.super Lcom/google/android/gms/internal/ads/zzbzz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/gms/ads/internal/util/zzbb;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbb;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzz;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblq;->d:Lcom/google/android/gms/ads/internal/util/zzbb;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzblq;->e:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    return-void
.end method


# virtual methods
.method public final f()Lcom/google/android/gms/internal/ads/zzbll;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbll;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbll;-><init>(Lcom/google/android/gms/internal/ads/zzblq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->c:Ljava/lang/Object;

    .line 2
    monitor-enter v1

    :try_start_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzblm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzblm;-><init>(Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzbll;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbln;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzbln;-><init>(Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzbll;)V

    .line 3
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->e(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/internal/ads/zzbzu;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 4
    :goto_1d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    .line 5
    monitor-exit v1

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public final g()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    const/4 v2, 0x1

    if-ltz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 2
    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzblq;->e:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzblq;->h()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected final h()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    if-ltz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 2
    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->e:Z

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    if-nez v1, :cond_28

    const-string v1, "No reference is left (including root). Cleaning up engine."

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzblp;-><init>(Lcom/google/android/gms/internal/ads/zzblq;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbzv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbzv;-><init>()V

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->e(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/internal/ads/zzbzu;)V

    goto :goto_2d

    :cond_28
    const-string v1, "There are still references to the engine. Not destroying."

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 6
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method protected final i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 2
    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->f:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzblq;->h()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
