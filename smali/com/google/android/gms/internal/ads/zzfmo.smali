###### Class com.google.android.gms.internal.ads.zzfmo (com.google.android.gms.internal.ads.zzfmo)
.class final Lcom/google/android/gms/internal/ads/zzfmo;
.super Lcom/google/android/gms/internal/ads/zzfml;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic p:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzfml;

.field final synthetic r:Lcom/google/android/gms/internal/ads/zzfmv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfmv;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzfml;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->r:Lcom/google/android/gms/internal/ads/zzfmv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfmo;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfmo;->q:Lcom/google/android/gms/internal/ads/zzfml;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfml;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmo;->r:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfmv;->g(Lcom/google/android/gms/internal/ads/zzfmv;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->r:Lcom/google/android/gms/internal/ads/zzfmv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmo;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfmv;->n(Lcom/google/android/gms/internal/ads/zzfmv;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->r:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->i(Lcom/google/android/gms/internal/ads/zzfmv;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->r:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->f(Lcom/google/android/gms/internal/ads/zzfmv;)Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v1

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfmk;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->r:Lcom/google/android/gms/internal/ads/zzfmv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmo;->q:Lcom/google/android/gms/internal/ads/zzfml;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfmv;->p(Lcom/google/android/gms/internal/ads/zzfmv;Lcom/google/android/gms/internal/ads/zzfml;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v1
.end method
