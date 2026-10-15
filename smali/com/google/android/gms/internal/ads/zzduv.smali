###### Class com.google.android.gms.internal.ads.zzduv (com.google.android.gms.internal.ads.zzduv)
.class public final Lcom/google/android/gms/internal/ads/zzduv;
.super Lcom/google/android/gms/internal/ads/zzdut;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdut;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->v()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbv;->b()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzbsn;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzbtn;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->q:Z

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    monitor-exit v0

    return-object p1

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->q:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->s:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzduu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzduu;-><init>(Lcom/google/android/gms/internal/ads/zzduv;)V

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 4
    monitor-exit v0

    return-object p1

    :catchall_25
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->p:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->r:Z

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->r:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3c

    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbsn;->o0()Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdut;->s:Lcom/google/android/gms/internal/ads/zzbtn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdus;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdus;-><init>(Lcom/google/android/gms/internal/ads/zzdut;)V

    .line 2
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbsz;->k6(Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzbtj;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1a} :catch_30
    .catchall {:try_start_a .. :try_end_1a} :catchall_1b

    goto :goto_3a

    :catchall_1b
    move-exception v1

    .line 3
    :try_start_1c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 4
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    goto :goto_3a

    .line 5
    :catch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 6
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    .line 7
    :cond_3a
    :goto_3a
    monitor-exit p1

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_3c

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzduu (com.google.android.gms.internal.ads.zzduu)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzduu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzduv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzduv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduu;->o:Lcom/google/android/gms/internal/ads/zzduv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduu;->o:Lcom/google/android/gms/internal/ads/zzduv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdut;->a()V

    return-void
.end method
