###### Class com.google.android.gms.internal.ads.zzccv (com.google.android.gms.internal.ads.zzccv)
.class public final Lcom/google/android/gms/internal/ads/zzccv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_16} :catch_17

    return-object p0

    .line 3
    :catch_17
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precache invalid numeric parameter \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 19

    move-object/from16 v0, p2

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcbj;

    const/4 v2, 0x3

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->j(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "google.afma.Notify_dt"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Precache GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 7
    :cond_24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->A()Lcom/google/android/gms/internal/ads/zzccn;

    move-result-object v2

    const-string v3, "abort"

    .line 8
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzccn;->j(Lcom/google/android/gms/internal/ads/zzcbj;)Z

    move-result v0

    if-nez v0, :cond_183

    const-string v0, "Precache abort but no precache task running."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_3c
    const-string v3, "src"

    .line 11
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "periodicReportIntervalMs"

    .line 12
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "exoPlayerRenderingIntervalMs"

    .line 13
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "exoPlayerIdleIntervalMs"

    .line 14
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcbi;

    const-string v8, "flags"

    .line 15
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzcbi;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzcbi;->l:Z

    if-eqz v3, :cond_13f

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const-string v12, "demuxed"

    .line 16
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_9e

    .line 17
    :try_start_77
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 19
    :goto_83
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v15, v13, :cond_92

    .line 20
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v15
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_8f} :catch_94

    add-int/lit8 v15, v15, 0x1

    goto :goto_83

    :cond_92
    move-object v10, v14

    goto :goto_9e

    :catch_94
    const-string v10, "Malformed demuxed URL list for precache: "

    .line 21
    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 22
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_9e
    :goto_9e
    if-nez v10, :cond_a4

    new-array v10, v9, [Ljava/lang/String;

    aput-object v3, v10, v11

    :cond_a4
    if-eqz v8, :cond_c8

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzccn;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzccm;

    .line 24
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzccm;->c:Lcom/google/android/gms/internal/ads/zzcbj;

    if-ne v9, v1, :cond_aa

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzccm;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_aa

    move-object v13, v8

    goto :goto_cc

    :cond_c6
    const/4 v13, 0x0

    goto :goto_cc

    .line 25
    :cond_c8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzccn;->c(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzccm;

    move-result-object v13

    :goto_cc
    if-eqz v13, :cond_d4

    const-string v0, "Precache task is already running."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_d4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbj;->h()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v2

    if-nez v2, :cond_e0

    const-string v0, "Precache requires a dependency provider."

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_e0
    const-string v2, "player"

    .line 29
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_ec

    .line 30
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_ec
    if-eqz v4, :cond_f5

    .line 31
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcbj;->O(I)V

    :cond_f5
    if-eqz v5, :cond_fe

    .line 32
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcbj;->X0(I)V

    :cond_fe
    if-eqz v6, :cond_107

    .line 33
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcbj;->P0(I)V

    .line 34
    :cond_107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 35
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbj;->h()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zza;->b:Lcom/google/android/gms/internal/ads/zzccg;

    if-lez v2, :cond_131

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcba;->O()I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzcbi;->h:I

    if-ge v2, v4, :cond_121

    .line 37
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdd;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzcdd;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbi;)V

    goto :goto_136

    .line 38
    :cond_121
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzcbi;->b:I

    if-ge v2, v4, :cond_12b

    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcda;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzcda;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbi;)V

    goto :goto_136

    .line 40
    :cond_12b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzccy;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzccy;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    goto :goto_136

    .line 41
    :cond_131
    new-instance v2, Lcom/google/android/gms/internal/ads/zzccx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzccx;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    .line 42
    :goto_136
    new-instance v4, Lcom/google/android/gms/internal/ads/zzccm;

    .line 43
    invoke-direct {v4, v1, v2, v3, v10}, Lcom/google/android/gms/internal/ads/zzccm;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzb;->b()Lcom/google/android/gms/internal/ads/zzfut;

    goto :goto_147

    .line 45
    :cond_13f
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzccn;->c(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzccm;

    move-result-object v1

    if-eqz v1, :cond_184

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzccm;->d:Lcom/google/android/gms/internal/ads/zzccu;

    :goto_147
    const-string v1, "minBufferMs"

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_156

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzccu;->u(I)V

    :cond_156
    const-string v1, "maxBufferMs"

    .line 48
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_165

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzccu;->s(I)V

    :cond_165
    const-string v1, "bufferForPlaybackMs"

    .line 50
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_174

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzccu;->p(I)V

    :cond_174
    const-string v1, "bufferForPlaybackAfterRebufferMs"

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzccv;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzccu;->r(I)V

    :cond_183
    return-void

    :cond_184
    const-string v0, "Precache must specify a source."

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method
