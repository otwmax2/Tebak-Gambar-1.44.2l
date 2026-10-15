###### Class com.google.android.gms.internal.ads.zzdww (com.google.android.gms.internal.ads.zzdww)
.class public final Lcom/google/android/gms/internal/ads/zzdww;
.super Lcom/google/android/gms/internal/ads/zzdwz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private v:Lcom/google/android/gms/internal/ads/zzbsr;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->s:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->v()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->b()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->t:Landroid/os/Looper;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwz;->u:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final P0(I)V
    .registers 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Remote ad service connection suspended, cause: %d."

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 3
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/zzbsr;J)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->p:Z

    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->u:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2f

    monitor-exit p0

    return-object p1

    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->p:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdww;->v:Lcom/google/android/gms/internal/ads/zzbsr;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwz;->a()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdwv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdwv;-><init>(Lcom/google/android/gms/internal/ads/zzdww;)V

    .line 4
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized t1(Landroid/os/Bundle;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->q:Z

    if-nez p1, :cond_37

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->q:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_39

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->r:Lcom/google/android/gms/internal/ads/zzbsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsq;->o0()Lcom/google/android/gms/internal/ads/zzbtd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdww;->v:Lcom/google/android/gms/internal/ads/zzbsr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdwy;-><init>(Lcom/google/android/gms/internal/ads/zzdwz;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtd;->X9(Lcom/google/android/gms/internal/ads/zzbsr;Lcom/google/android/gms/internal/ads/zzbtg;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_2b
    .catchall {:try_start_8 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    const-string v0, "RemoteAdsServiceSignalClientTask.onConnected"

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_39

    monitor-exit p0

    return-void

    .line 5
    :catch_2b
    :try_start_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 6
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    monitor-exit p0

    return-void

    .line 7
    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzdwv (com.google.android.gms.internal.ads.zzdwv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdwv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdww;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdww;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->o:Lcom/google/android/gms/internal/ads/zzdww;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->o:Lcom/google/android/gms/internal/ads/zzdww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwz;->b()V

    return-void
.end method
