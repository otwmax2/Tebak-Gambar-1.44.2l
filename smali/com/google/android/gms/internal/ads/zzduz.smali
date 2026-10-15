###### Class com.google.android.gms.internal.ads.zzduz (com.google.android.gms.internal.ads.zzduz)
.class public final Lcom/google/android/gms/internal/ads/zzduz;
.super Lcom/google/android/gms/internal/ads/zzdut;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private u:Ljava/lang/String;

.field private v:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdut;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzduz;->v:I

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
.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvi;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzbtn;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzduz;->v:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_16

    if-eq v1, v3, :cond_16

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuj;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_16
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->q:Z

    if-eqz v1, :cond_1e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 2
    monitor-exit v0

    return-object p1

    :cond_1e
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzduz;->v:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdut;->q:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->s:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzduy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzduy;-><init>(Lcom/google/android/gms/internal/ads/zzduz;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_39
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzduz;->v:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    if-eq v1, v2, :cond_17

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvi;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuj;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_17
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->q:Z

    if-eqz v1, :cond_1f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 2
    monitor-exit v0

    return-object p1

    :cond_1f
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzduz;->v:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdut;->q:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduz;->u:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdux;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdux;-><init>(Lcom/google/android/gms/internal/ads/zzduz;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_3a
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->p:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->r:Z

    if-nez v0, :cond_5e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->r:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_60

    :try_start_a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzduz;->v:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbsn;->o0()Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdut;->s:Lcom/google/android/gms/internal/ads/zzbtn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdus;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdus;-><init>(Lcom/google/android/gms/internal/ads/zzdut;)V

    .line 2
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbsz;->I2(Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzbtj;)V

    goto :goto_5e

    :cond_20
    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbsn;->o0()Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzduz;->u:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdus;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdus;-><init>(Lcom/google/android/gms/internal/ads/zzdut;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbsz;->J2(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtj;)V

    goto :goto_5e

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 5
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3e} :catch_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_3e} :catch_54
    .catchall {:try_start_a .. :try_end_3e} :catchall_3f

    goto :goto_5e

    :catchall_3f
    move-exception v1

    .line 6
    :try_start_40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 7
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 8
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    goto :goto_5e

    .line 9
    :catch_54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 10
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    .line 11
    :cond_5e
    :goto_5e
    monitor-exit p1

    return-void

    :catchall_60
    move-exception v0

    monitor-exit p1
    :try_end_62
    .catchall {:try_start_40 .. :try_end_62} :catchall_60

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzdux (com.google.android.gms.internal.ads.zzdux)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdux;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzduz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzduz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdux;->o:Lcom/google/android/gms/internal/ads/zzduz;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdux;->o:Lcom/google/android/gms/internal/ads/zzduz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdut;->a()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzduy (com.google.android.gms.internal.ads.zzduy)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzduy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzduz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzduz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduy;->o:Lcom/google/android/gms/internal/ads/zzduz;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduy;->o:Lcom/google/android/gms/internal/ads/zzduz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdut;->a()V

    return-void
.end method
