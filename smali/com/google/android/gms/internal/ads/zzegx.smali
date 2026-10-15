###### Class com.google.android.gms.internal.ads.zzegx (com.google.android.gms.internal.ads.zzegx)
.class public final Lcom/google/android/gms/internal/ads/zzegx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegx;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/internal/ads/zzegx;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegx;->h()V

    return-void
.end method

.method private final declared-synchronized g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_63

    if-nez p1, :cond_a

    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    const-string v1, "data"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegx;->l(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "rtb_adapters"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_63

    if-nez p1, :cond_1e

    monitor-exit p0

    return-object v0

    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_25
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3d

    const-string v5, ""

    .line 7
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :goto_41
    if-ge v3, p1, :cond_61

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 10
    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzegx;->f(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegx;->a:Ljava/util/Map;

    .line 12
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzegz;

    if-eqz v5, :cond_5e

    new-instance v5, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {v5, v4, p2, v1}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_1e .. :try_end_5e} :catchall_63

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_61
    monitor-exit p0

    return-object v0

    :catchall_63
    move-exception p1

    monitor-exit p0

    goto :goto_67

    :goto_66
    throw p1

    :goto_67
    goto :goto_66
.end method

.method private final declared-synchronized h()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegx;->j()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegx;->k()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized i(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->c:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegx;->c:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2e

    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_2e
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_38

    monitor-exit p0

    return-void

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized j()V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->f()Lcom/google/android/gms/internal/ads/zzbyd;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyd;->f()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_9d

    if-nez v0, :cond_15

    goto/16 :goto_93

    :cond_15
    :try_start_15
    const-string v1, "ad_unit_id_settings"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "ad_unit_patterns"

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_93

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_27
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_93

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->i9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_52

    const-string v4, "ad_unit_id"

    const-string v5, ""

    .line 10
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5a

    :cond_52
    const-string v4, "ad_unit_id"

    const-string v5, ""

    .line 11
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5a
    const-string v5, "format"

    const-string v6, ""

    .line 12
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "mediation_config"

    .line 14
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_70

    goto :goto_8d

    :cond_70
    const-string v7, "ad_networks"

    .line 15
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_8d

    const/4 v7, 0x0

    .line 16
    :goto_79
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8d

    .line 17
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 18
    invoke-direct {p0, v8, v5}, Lcom/google/android/gms/internal/ads/zzegx;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 19
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    .line 20
    :cond_8d
    :goto_8d
    invoke-direct {p0, v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzegx;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_90} :catch_95
    .catchall {:try_start_15 .. :try_end_90} :catchall_9d

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 21
    :cond_93
    :goto_93
    monitor-exit p0

    return-void

    :catch_95
    move-exception v0

    :try_start_96
    const-string v1, "Malformed config loading JSON."

    .line 22
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_9d

    monitor-exit p0

    return-void

    :catchall_9d
    move-exception v0

    monitor-exit p0

    goto :goto_a1

    :goto_a0
    throw v0

    :goto_a1
    goto :goto_a0
.end method

.method private final declared-synchronized k()V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcq;->f:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_81

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->C1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_81

    .line 4
    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->f()Lcom/google/android/gms/internal/ads/zzbyd;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyd;->f()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_83

    if-nez v0, :cond_36

    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    const-string v1, "signal_adapters"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_3e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_77

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "data"

    .line 9
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzegx;->l(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "adapter_class_name"

    .line 11
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "render"

    .line 12
    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "collect_signals"

    .line 13
    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_74

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzegx;->b:Ljava/util/Map;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzehb;

    invoke-direct {v8, v5, v3, v6, v4}, Lcom/google/android/gms/internal/ads/zzehb;-><init>(Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 15
    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_74} :catch_79
    .catchall {:try_start_36 .. :try_end_74} :catchall_83

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_77
    monitor-exit p0

    return-void

    :catch_79
    move-exception v0

    :try_start_7a
    const-string v1, "Malformed config loading JSON."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_83

    monitor-exit p0

    return-void

    .line 17
    :cond_81
    :goto_81
    monitor-exit p0

    return-void

    :catchall_83
    move-exception v0

    monitor-exit p0

    goto :goto_87

    :goto_86
    throw v0

    :goto_87
    goto :goto_86
.end method

.method private static final l(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_21

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    .line 5
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_21
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_8b

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->c:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqn;->d()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_91

    monitor-exit p0

    return-object p1

    .line 3
    :cond_1f
    :try_start_1f
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegx;->e:Lorg/json/JSONObject;

    .line 4
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzdnk;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->i9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_45

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_45
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    :cond_4c
    if-nez v1, :cond_54

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqn;->d()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object p1
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_91

    monitor-exit p0

    return-object p1

    :cond_54
    :try_start_54
    new-instance p1, Ljava/util/HashMap;

    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegz;

    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzegz;->a:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_79
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzegz;->c:Landroid/os/Bundle;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 17
    :cond_85
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqn;->c(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_54 .. :try_end_89} :catchall_91

    monitor-exit p0

    return-object p1

    .line 18
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqn;->d()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object p1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_91

    monitor-exit p0

    return-object p1

    :catchall_91
    move-exception p1

    monitor-exit p0

    goto :goto_95

    :goto_94
    throw p1

    :goto_95
    goto :goto_94
.end method

.method public final declared-synchronized b()Ljava/util/Map;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqn;->c(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzegv;-><init>(Lcom/google/android/gms/internal/ads/zzegx;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzg;->w0(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzegw;-><init>(Lcom/google/android/gms/internal/ads/zzegx;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzegw;-><init>(Lcom/google/android/gms/internal/ads/zzegx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_26

    if-eqz v0, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegz;

    new-instance v2, Landroid/os/Bundle;

    .line 3
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, ""

    invoke-direct {v1, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzegv (com.google.android.gms.internal.ads.zzegv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzegv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzegx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegv;->o:Lcom/google/android/gms/internal/ads/zzegx;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegv;->o:Lcom/google/android/gms/internal/ads/zzegx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegx;->e()V

    return-void
.end method
