###### Class com.google.android.gms.internal.ads.zzbbj (com.google.android.gms.internal.ads.zzbbj)
.class public final Lcom/google/android/gms/internal/ads/zzbbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->a:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->b:Ljava/util/Map;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbj;->c:Ljava/lang/Object;

    const-string p2, "action"

    const-string v0, "make_wv"

    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ad_format"

    .line 4
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final f()Lcom/google/android/gms/internal/ads/zzbbg;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbg;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzbbg;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbg;)V

    return-object v2
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbbi;
    .registers 15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->G1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    .line 5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbbj;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbbj;->a:Ljava/util/List;

    .line 6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x2c

    const/16 v7, 0x2e

    if-eqz v5, :cond_90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbbg;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbbg;->a()J

    move-result-wide v8

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbbg;->c()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbbg;->b()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v5

    if-eqz v5, :cond_23

    const-wide/16 v11, 0x0

    cmp-long v13, v8, v11

    if-lez v13, :cond_23

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbbg;->a()J

    move-result-wide v11

    sub-long/2addr v8, v11

    .line 10
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_23

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbbg;->a()J

    move-result-wide v6

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbbg;->a()J

    move-result-wide v5

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_79
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbbg;->a()J

    move-result-wide v5

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_90
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbbj;->a:Ljava/util/List;

    .line 14
    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    .line 15
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 17
    :cond_a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_af

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    :cond_af
    :goto_af
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_10c

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v10

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v12

    sub-long/2addr v8, v12

    add-long/2addr v10, v8

    .line 27
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 29
    :cond_f9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_108

    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 31
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_10c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    monitor-exit v3

    return-object v0

    :catchall_117
    move-exception v0

    .line 33
    monitor-exit v3
    :try_end_119
    .catchall {:try_start_1d .. :try_end_119} :catchall_117

    goto :goto_11b

    :goto_11a
    throw v0

    :goto_11b
    goto :goto_11a
.end method

.method public final b()Ljava/util/Map;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->f()Lcom/google/android/gms/internal/ads/zzbaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->b:Ljava/util/Map;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzbbj;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    monitor-exit p1

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->f()Lcom/google/android/gms/internal/ads/zzbaz;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbbf;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbj;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzbbf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final varargs e(Lcom/google/android/gms/internal/ads/zzbbg;J[Ljava/lang/String;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    if-gtz v1, :cond_15

    :try_start_6
    aget-object v2, p4, v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-direct {v3, p2, p3, v2, p1}, Lcom/google/android/gms/internal/ads/zzbbg;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbg;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbj;->a:Ljava/util/List;

    .line 2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3
    :cond_15
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_18
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    goto :goto_1c

    :goto_1b
    throw p1

    :goto_1c
    goto :goto_1b
.end method
