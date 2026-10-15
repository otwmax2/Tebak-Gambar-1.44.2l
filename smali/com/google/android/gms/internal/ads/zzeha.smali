###### Class com.google.android.gms.internal.ads.zzeha (com.google.android.gms.internal.ads.zzeha)
.class public final Lcom/google/android/gms/internal/ads/zzeha;
.super Lcom/google/android/gms/internal/ads/zzbpe;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Lcom/google/android/gms/internal/ads/zzbpc;

.field private final q:Lcom/google/android/gms/internal/ads/zzbzs;

.field private final r:Lorg/json/JSONObject;

.field private final s:J

.field private t:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/internal/ads/zzbzs;J)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpe;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeha;->t:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeha;->q:Lcom/google/android/gms/internal/ads/zzbzs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeha;->p:Lcom/google/android/gms/internal/ads/zzbpc;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzeha;->s:J

    :try_start_15
    const-string p3, "adapter_version"

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbpc;->c()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbpq;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "sdk_version"

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbpc;->e()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbpq;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "name"

    .line 5
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_34} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_34} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_34} :catch_34

    :catch_34
    return-void
.end method

.method public static declared-synchronized Sa(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzeha;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_33

    :try_start_8
    const-string v2, "name"

    .line 2
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "signal_error"

    const-string v2, "Adapter failed to instantiate"

    .line 3
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbar;->t1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "signal_error_code"

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    :cond_2c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2f} :catch_31
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    monitor-exit v0

    return-void

    :catch_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized Ta(Ljava/lang/String;I)V
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->t:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_57

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const-string v1, "signal_error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->u1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const-string v0, "latency"

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeha;->s:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->t1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const-string v0, "signal_error_code"

    .line 8
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_4b} :catch_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_57

    :catch_4b
    :cond_4b
    :try_start_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->q:Lcom/google/android/gms/internal/ads/zzbzs;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->t:Z
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_57

    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized I(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeha;->Ta(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Y1(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->p:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeha;->Ta(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Signal collection timeout."

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeha;->Ta(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->t:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->t1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const-string v1, "signal_error_code"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_21} :catch_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2d

    :catch_21
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->q:Lcom/google/android/gms/internal/ads/zzbzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->t:Z
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->t:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_61

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_10

    :try_start_9
    const-string p1, "Adapter returned null signals"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeha;->I(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_61

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const-string v1, "signals"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->u1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const-string v0, "latency"

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeha;->s:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->t1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    const-string v0, "signal_error_code"

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_55} :catch_55
    .catchall {:try_start_10 .. :try_end_55} :catchall_61

    :catch_55
    :cond_55
    :try_start_55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->q:Lcom/google/android/gms/internal/ads/zzbzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->r:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->t:Z
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_61

    monitor-exit p0

    return-void

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method
