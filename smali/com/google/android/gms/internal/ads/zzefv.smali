###### Class com.google.android.gms.internal.ads.zzefv (com.google.android.gms.internal.ads.zzefv)
.class final Lcom/google/android/gms/internal/ads/zzefv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvx;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzeaw;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbzs;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzefw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefw;Lcom/google/android/gms/internal/ads/zzeaw;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefv;->d:Lcom/google/android/gms/internal/ads/zzefw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefv;->b:Lcom/google/android/gms/internal/ads/zzeaw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefv;->c:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzefv;->a:Z

    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Y4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x3

    :goto_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->c:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeax;

    .line 4
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized K0(ILjava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->a:Z

    if-nez p2, :cond_14

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzefv;->b:Lcom/google/android/gms/internal/ads/zzeaw;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeaw;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzefw;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_14
    move-object v2, p2

    const-string v3, "undefined"

    .line 2
    new-instance p2, Lcom/google/android/gms/ads/internal/client/zze;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzefv;->a(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b1(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->a:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefv;->a(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->c:Lcom/google/android/gms/internal/ads/zzbzs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(I)V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->b:Lcom/google/android/gms/internal/ads/zzeaw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaw;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefw;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "undefined"

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zze;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefv;->a(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
