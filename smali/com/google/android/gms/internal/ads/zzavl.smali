###### Class com.google.android.gms.internal.ads.zzavl (com.google.android.gms.internal.ads.zzavl)
.class final Lcom/google/android/gms/internal/ads/zzavl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzavm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavl;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavl;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavm;->e(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavl;->o:Lcom/google/android/gms/internal/ads/zzavm;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->k(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzavs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavl;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->c(Lcom/google/android/gms/internal/ads/zzavm;)Lcom/google/android/gms/internal/ads/zzavp;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->f(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzavp;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavl;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->e(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method
