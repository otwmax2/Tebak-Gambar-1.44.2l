###### Class com.google.android.gms.internal.ads.zzdna (com.google.android.gms.internal.ads.zzdna)
.class public final Lcom/google/android/gms/internal/ads/zzdna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmz;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmz;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzdmz;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdna;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdna;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmz;->b:Lcom/google/android/gms/internal/ads/zzbpq;

    if-nez p1, :cond_b

    goto :goto_10

    .line 2
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpq;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    :goto_10
    const-string p1, ""

    return-object p1
.end method

.method final declared-synchronized d(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzezs;)V
    .registers 9
    .param p2    # Lcom/google/android/gms/internal/ads/zzezs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_44

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmz;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_44

    const/4 v1, 0x0

    if-nez p2, :cond_12

    :catch_10
    move-object v2, v1

    goto :goto_16

    .line 2
    :cond_12
    :try_start_12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezs;->j()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object v2
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_12 .. :try_end_16} :catch_10
    .catchall {:try_start_12 .. :try_end_16} :catchall_44

    :goto_16
    if-nez p2, :cond_19

    goto :goto_1d

    .line 3
    :cond_19
    :try_start_19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezs;->k()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object v1
    :try_end_1d
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_19 .. :try_end_1d} :catch_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_44

    .line 4
    :catch_1d
    :goto_1d
    :try_start_1d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->A8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_44

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_33

    :goto_31
    const/4 v4, 0x1

    goto :goto_3a

    :cond_33
    if-nez p2, :cond_36

    goto :goto_3a

    .line 7
    :cond_36
    :try_start_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezs;->c()Z
    :try_end_39
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_44

    goto :goto_31

    .line 8
    :catch_3a
    :goto_3a
    :try_start_3a
    invoke-direct {v0, p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/internal/ads/zzbpq;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdna;->a:Ljava/util/Map;

    .line 9
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_44

    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0

    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method

.method final declared-synchronized e(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_22

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    .line 2
    :cond_b
    :try_start_b
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbpc;->c()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbpc;->e()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object p2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_20

    :try_start_13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmz;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/internal/ads/zzbpq;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdna;->a:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    monitor-exit p0

    return-void

    :catchall_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
