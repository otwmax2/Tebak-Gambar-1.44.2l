###### Class com.google.android.gms.internal.ads.zzftv (com.google.android.gms.internal.ads.zzftv)
.class abstract Lcom/google/android/gms/internal/ads/zzftv;
.super Lcom/google/android/gms/internal/ads/zzfus;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final q:Ljava/util/concurrent/Executor;

.field final synthetic r:Lcom/google/android/gms/internal/ads/zzftw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftw;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfus;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftv;->q:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final d(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzftw;->W(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzftv;)V

    .line 2
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    .line 3
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void

    .line 4
    :cond_16
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_21

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->cancel(Z)Z

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final e(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzftw;->W(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzftv;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzftv;->h(Ljava/lang/Object;)V

    return-void
.end method

.method final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsx;->isDone()Z

    move-result v0

    return v0
.end method

.method abstract h(Ljava/lang/Object;)V
.end method

.method final i()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftv;->q:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftv;->r:Lcom/google/android/gms/internal/ads/zzftw;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void
.end method
