###### Class com.google.android.gms.internal.ads.zzkk (com.google.android.gms.internal.ads.zzkk)
.class public final Lcom/google/android/gms/internal/ads/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzkj;

.field private final b:Lcom/google/android/gms/internal/ads/zzki;

.field private final c:Lcom/google/android/gms/internal/ads/zzdm;

.field private final d:Lcom/google/android/gms/internal/ads/zzcn;

.field private e:I

.field private f:Ljava/lang/Object;

.field private final g:Landroid/os/Looper;

.field private final h:I

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzcn;ILcom/google/android/gms/internal/ads/zzdm;Landroid/os/Looper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->b:Lcom/google/android/gms/internal/ads/zzki;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkk;->a:Lcom/google/android/gms/internal/ads/zzkj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkk;->d:Lcom/google/android/gms/internal/ads/zzcn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzkk;->g:Landroid/os/Looper;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzkk;->c:Lcom/google/android/gms/internal/ads/zzdm;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzkk;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->e:I

    return v0
.end method

.method public final b()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzkj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->a:Lcom/google/android/gms/internal/ads/zzkj;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzkk;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->b:Lcom/google/android/gms/internal/ads/zzki;

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzki;->b(Lcom/google/android/gms/internal/ads/zzkk;)V

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzkk;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final f(I)Lcom/google/android/gms/internal/ads/zzkk;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->e:I

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized h(Z)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->j:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->i:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->g:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_1d
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkk;->k:Z

    if-nez v2, :cond_39

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_31

    .line 4
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long p1, v0, p1

    goto :goto_1d

    .line 6
    :cond_31
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_39
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->j:Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return p1

    :catchall_3d
    move-exception p1

    monitor-exit p0

    goto :goto_41

    :goto_40
    throw p1

    :goto_41
    goto :goto_40
.end method

.method public final declared-synchronized j()Z
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method
