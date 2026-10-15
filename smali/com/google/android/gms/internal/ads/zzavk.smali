###### Class com.google.android.gms.internal.ads.zzavk (com.google.android.gms.internal.ads.zzavk)
.class final Lcom/google/android/gms/internal/ads/zzavk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzavm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P0(I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavm;->e(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->k(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzavs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->e(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit p1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavm;->e(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->c(Lcom/google/android/gms/internal/ads/zzavm;)Lcom/google/android/gms/internal/ads/zzavp;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->c(Lcom/google/android/gms/internal/ads/zzavm;)Lcom/google/android/gms/internal/ads/zzavp;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavp;->p0()Lcom/google/android/gms/internal/ads/zzavs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->k(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzavs;)V
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_1a} :catch_1d
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    goto :goto_28

    :catchall_1b
    move-exception v0

    goto :goto_33

    :catch_1d
    move-exception v0

    :try_start_1e
    const-string v1, "Unable to obtain a cache service instance."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->h(Lcom/google/android/gms/internal/ads/zzavm;)V

    .line 5
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->e(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :goto_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_1b

    throw v0
.end method
