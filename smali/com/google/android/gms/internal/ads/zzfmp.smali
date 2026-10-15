###### Class com.google.android.gms.internal.ads.zzfmp (com.google.android.gms.internal.ads.zzfmp)
.class final Lcom/google/android/gms/internal/ads/zzfmp;
.super Lcom/google/android/gms/internal/ads/zzfml;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic p:Lcom/google/android/gms/internal/ads/zzfmv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfmv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfml;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfmv;->g(Lcom/google/android/gms/internal/ads/zzfmv;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->i(Lcom/google/android/gms/internal/ads/zzfmv;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->i(Lcom/google/android/gms/internal/ads/zzfmv;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gtz v1, :cond_21

    goto :goto_30

    .line 2
    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->f(Lcom/google/android/gms/internal/ads/zzfmv;)Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v1

    const-string v3, "Leaving the connection open for other ongoing calls."

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfmk;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->d(Lcom/google/android/gms/internal/ads/zzfmv;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_60

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->f(Lcom/google/android/gms/internal/ads/zzfmv;)Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v1

    const-string v3, "Unbind from service."

    new-array v4, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfmk;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->a(Lcom/google/android/gms/internal/ads/zzfmv;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->b(Lcom/google/android/gms/internal/ads/zzfmv;)Landroid/content/ServiceConnection;

    move-result-object v1

    .line 7
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfmv;->l(Lcom/google/android/gms/internal/ads/zzfmv;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfmv;->m(Lcom/google/android/gms/internal/ads/zzfmv;Landroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfmv;->k(Lcom/google/android/gms/internal/ads/zzfmv;Landroid/content/ServiceConnection;)V

    :cond_60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->p:Lcom/google/android/gms/internal/ads/zzfmv;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmv;->o(Lcom/google/android/gms/internal/ads/zzfmv;)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_7 .. :try_end_69} :catchall_67

    throw v1
.end method
