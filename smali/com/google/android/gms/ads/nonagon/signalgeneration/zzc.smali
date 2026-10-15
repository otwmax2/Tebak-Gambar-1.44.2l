###### Class com.google.android.gms.ads.nonagon.signalgeneration.zzc (com.google.android.gms.ads.nonagon.signalgeneration.zzc)
.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/util/Map;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Ljava/util/ArrayDeque;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final g:Ljava/util/ArrayDeque;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/zzdpn;

.field private i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpn;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->f:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->g:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->h:Lcom/google/android/gms/internal/ads/zzdpn;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->A6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->a:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->B6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->b:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->G6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->c:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->E6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->d:Z

    new-instance p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;)V

    .line 13
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->a:I

    return p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->f:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private final declared-synchronized g(Lcom/google/android/gms/internal/ads/zzdpd;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->g:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->f:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->f:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v3, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final h(Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/ArrayDeque;Ljava/lang/String;)V
    .registers 8

    .line 1
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->i:Ljava/util/Map;

    const-string v2, "action"

    const-string v3, "ev"

    .line 4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->i:Ljava/util/Map;

    const-string v2, "e_r"

    .line 5
    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->i:Ljava/util/Map;

    .line 6
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "e_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->d:Z

    if-eqz v1, :cond_76

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8
    :try_start_38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_agent"

    .line 9
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extras"

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "query_info_type"

    .line 11
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_58} :catch_59

    goto :goto_60

    .line 13
    :catch_59
    new-instance v2, Landroid/util/Pair;

    const-string v0, ""

    .line 14
    invoke-direct {v2, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    :goto_60
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->i:Ljava/util/Map;

    .line 16
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "e_type"

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->i:Ljava/util/Map;

    .line 17
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "e_agent"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->h:Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->i:Ljava/util/Map;

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpp;->e(Ljava/util/Map;)V

    goto :goto_0

    :cond_7e
    return-void
.end method

.method private final declared-synchronized i()V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Ljava/util/Map;

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_61

    .line 3
    :try_start_f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->b:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_53

    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->g:Ljava/util/ArrayDeque;

    new-instance v5, Landroid/util/Pair;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_52
    .catch Ljava/util/ConcurrentModificationException; {:try_start_f .. :try_end_52} :catch_55
    .catchall {:try_start_f .. :try_end_52} :catchall_61

    goto :goto_13

    :cond_53
    monitor-exit p0

    return-void

    :catch_55
    move-exception v0

    :try_start_56
    const-string v1, "QueryJsonMap.removeExpiredEntries"

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_61

    monitor-exit p0

    return-void

    :catchall_61
    move-exception v0

    monitor-exit p0

    goto :goto_65

    :goto_64
    throw v0

    :goto_65
    goto :goto_64
.end method

.method private static final j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpd;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "rid"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2a

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object p1

    const-string p2, "mhit"

    const-string v1, "true"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_38

    monitor-exit p0

    return-object v0

    .line 6
    :cond_2a
    :try_start_2a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object p1

    const-string p2, "mhit"

    const-string v0, "false"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_38

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpd;)V
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->i()V

    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->g(Lcom/google/android/gms/internal/ads/zzdpd;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V
    .registers 5

    const-string v0, "to"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->h(Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    const-string p2, "of"

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->h(Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.gms.ads.nonagon.signalgeneration.zza (com.google.android.gms.ads.nonagon.signalgeneration.zza)
.class public final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzdpd;

.field public final synthetic q:Ljava/util/ArrayDeque;

.field public final synthetic r:Ljava/util/ArrayDeque;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->o:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->p:Lcom/google/android/gms/internal/ads/zzdpd;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->q:Ljava/util/ArrayDeque;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->r:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->o:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->p:Lcom/google/android/gms/internal/ads/zzdpd;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->q:Ljava/util/ArrayDeque;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e(Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V

    return-void
.end method
