###### Class com.google.android.gms.internal.ads.zzdsf (com.google.android.gms.internal.ads.zzdsf)
.class public final Lcom/google/android/gms/internal/ads/zzdsf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtd;
.implements Lcom/google/android/gms/internal/ads/zzdrq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdsn;

.field private final b:Lcom/google/android/gms/internal/ads/zzdte;

.field private final c:Lcom/google/android/gms/internal/ads/zzdrr;

.field private final d:Lcom/google/android/gms/internal/ads/zzdsa;

.field private final e:Lcom/google/android/gms/internal/ads/zzdrp;

.field private final f:Lcom/google/android/gms/internal/ads/zzdsz;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:Lorg/json/JSONObject;

.field private n:J

.field private o:Lcom/google/android/gms/internal/ads/zzdsb;

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Lcom/google/android/gms/internal/ads/zzdse;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsn;Lcom/google/android/gms/internal/ads/zzdte;Lcom/google/android/gms/internal/ads/zzdrr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzdsa;Lcom/google/android/gms/internal/ads/zzdsz;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->k:Ljava/util/Map;

    const-string v0, "{}"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdse;->o:Lcom/google/android/gms/internal/ads/zzdse;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->s:Lcom/google/android/gms/internal/ads/zzdse;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->a:Lcom/google/android/gms/internal/ads/zzdsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->b:Lcom/google/android/gms/internal/ads/zzdte;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsf;->c:Lcom/google/android/gms/internal/ads/zzdrr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrp;

    .line 6
    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzdrp;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->e:Lcom/google/android/gms/internal/ads/zzdrp;

    iget-object p1, p5, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->g:Ljava/lang/String;

    const-string p1, "afma-sdk-a-v22.0.0"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdsf;->d:Lcom/google/android/gms/internal/ads/zzdsa;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdsf;->f:Lcom/google/android/gms/internal/ads/zzdsz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->u()Lcom/google/android/gms/ads/internal/util/zzaw;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/internal/util/zzaw;->g(Lcom/google/android/gms/internal/ads/zzdsf;)V

    return-void
.end method

.method private final declared-synchronized q()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->i:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdrt;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdrt;->e()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdrt;->b()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2b

    .line 7
    :cond_45
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_10

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_57

    goto :goto_10

    :cond_55
    monitor-exit p0

    return-object v0

    :catchall_57
    move-exception v0

    monitor-exit p0

    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method private final r()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->r:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->d:Lcom/google/android/gms/internal/ads/zzdsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->a:Lcom/google/android/gms/internal/ads/zzdsn;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsn;->c(Lcom/google/android/gms/internal/ads/zzdsf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->b:Lcom/google/android/gms/internal/ads/zzdte;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdte;->c(Lcom/google/android/gms/internal/ads/zzdtd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->c:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdrr;->c(Lcom/google/android/gms/internal/ads/zzdrq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->f:Lcom/google/android/gms/internal/ads/zzdsz;

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsz;->Va(Lcom/google/android/gms/internal/ads/zzdsf;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdsf;->x(Ljava/lang/String;)V

    return-void
.end method

.method private final s()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzg;->N0(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized t(Lcom/google/android/gms/internal/ads/zzdsb;Z)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->o()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->v()V

    :cond_10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->o()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->w()V

    :cond_1b
    if-eqz p2, :cond_22

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->s()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_24

    monitor-exit p0

    return-void

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized u(ZZ)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->p:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->p:Z

    if-eqz p1, :cond_2b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->u()Lcom/google/android/gms/ads/internal/util/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzaw;->l()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 5
    :cond_27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->w()V

    goto :goto_34

    .line 6
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->o()Z

    move-result p1

    if-nez p1, :cond_34

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->v()V

    :cond_34
    :goto_34
    if-eqz p2, :cond_3b

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->s()V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3d

    monitor-exit p0

    return-void

    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized v()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->c:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->a()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->b:Lcom/google/android/gms/internal/ads/zzdte;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdte;->a()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized w()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->c:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->b()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->b:Lcom/google/android/gms/internal/ads/zzdte;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdte;->b()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized x(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_42

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 2
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isTestMode"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsf;->u(ZZ)V

    const-string p1, "gesture"

    const-string v2, "NONE"

    .line 5
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsb;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsb;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsf;->t(Lcom/google/android/gms/internal/ads/zzdsb;Z)V

    const-string p1, "networkExtras"

    const-string v1, "{}"

    .line 7
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    const-string p1, "networkExtrasExpirationSecs"

    const-wide v1, 0x7fffffffffffffffL

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3e} :catch_40
    .catchall {:try_start_9 .. :try_end_3e} :catchall_42

    monitor-exit p0

    return-void

    :catch_40
    monitor-exit p0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzdsb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->j:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->j:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->k:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->k:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->k:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 8
    :goto_37
    monitor-exit p0

    return-object v0

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->f8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->o()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_4c

    :cond_1a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_3a

    const-string v0, "{}"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J

    const-string v0, ""
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_50

    monitor-exit p0

    return-object v0

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    const-string v1, "{}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, ""
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_50

    monitor-exit p0

    return-object v0

    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_50

    monitor-exit p0

    return-object v0

    :cond_4c
    :goto_4c
    :try_start_4c
    const-string v0, ""
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_50

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_39

    :try_start_6
    const-string v1, "isTestMode"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->p:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "gesture"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_33

    const-string v1, "networkExtras"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "networkExtrasExpirationSecs"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_33} :catch_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_39

    .line 7
    :catch_33
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-object v0

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lorg/json/JSONObject;
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_109

    :try_start_6
    const-string v1, "platform"

    const-string v2, "ANDROID"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "internalSdkVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adapters"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->d:Lcom/google/android/gms/internal/ads/zzdsa;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdsa;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->D8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->m()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "plugin"

    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_52
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_67

    const-string v1, "{}"

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    :cond_67
    const-string v1, "networkExtras"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adSlots"

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->q()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appInfo"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->e:Lcom/google/android/gms/internal/ads/zzdrp;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrp;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->f()Lcom/google/android/gms/internal/ads/zzbyd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyd;->c()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "cld"

    new-instance v3, Lorg/json/JSONObject;

    .line 19
    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->v8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->m:Lorg/json/JSONObject;

    if-eqz v1, :cond_d7

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    const-string v1, "serverData"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->m:Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_107

    const-string v1, "openAction"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->s:Lcom/google/android/gms/internal/ads/zzdse;

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gesture"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->o:Lcom/google/android/gms/internal/ads/zzdsb;

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f7
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_f7} :catch_f8
    .catchall {:try_start_6 .. :try_end_f7} :catchall_109

    goto :goto_107

    :catch_f8
    move-exception v1

    :try_start_f9
    const-string v2, "Inspector.toJson"

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->t(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, "Ad inspector encountered an error"

    .line 30
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_107
    .catchall {:try_start_f9 .. :try_end_107} :catchall_109

    .line 31
    :cond_107
    :goto_107
    monitor-exit p0

    return-object v0

    :catchall_109
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrt;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->f8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->o()Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_a1

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->q:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->h8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_36

    const-string p1, "Maximum number of ad requests stored reached. Dropping the current request."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_a3

    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->i:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->i:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->q:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->i:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->B8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_69
    .catchall {:try_start_36 .. :try_end_69} :catchall_a3

    if-nez p1, :cond_6d

    monitor-exit p0

    return-void

    :cond_6d
    :try_start_6d
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdrt;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->j:Ljava/util/Map;

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->k:Ljava/util/Map;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->k:Ljava/util/Map;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbzs;

    .line 16
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 17
    :cond_9a
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_9d
    .catchall {:try_start_6d .. :try_end_9d} :catchall_a3

    monitor-exit p0

    return-void

    :cond_9f
    monitor-exit p0

    return-void

    .line 18
    :cond_a1
    :goto_a1
    monitor-exit p0

    return-void

    :catchall_a3
    move-exception p1

    monitor-exit p0

    goto :goto_a7

    :goto_a6
    throw p1

    :goto_a7
    goto :goto_a6
.end method

.method public final g()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->f8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->M()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_38

    .line 7
    :cond_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->r()V

    return-void

    .line 8
    :cond_38
    :goto_38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->m()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    return-void

    .line 10
    :cond_4b
    :try_start_4b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "isTestMode"

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->r()V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_5c} :catch_5c

    :catch_5c
    :cond_5c
    return-void
.end method

.method public final declared-synchronized h(Lcom/google/android/gms/ads/internal/client/zzda;Lcom/google/android/gms/internal/ads/zzdse;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->o()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_52

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    const/16 p2, 0x12

    .line 2
    :try_start_a
    invoke-static {p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzda;->Q5(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13
    .catchall {:try_start_a .. :try_end_11} :catchall_52

    monitor-exit p0

    return-void

    :catch_13
    :try_start_13
    const-string p1, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_52

    monitor-exit p0

    return-void

    .line 5
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->f8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_52

    if-nez v0, :cond_3d

    const/4 p2, 0x1

    .line 8
    :try_start_2d
    invoke-static {p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzda;->Q5(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_36
    .catchall {:try_start_2d .. :try_end_34} :catchall_52

    monitor-exit p0

    return-void

    :catch_36
    :try_start_36
    const-string p1, "Ad inspector had an internal error."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_52

    monitor-exit p0

    return-void

    .line 11
    :cond_3d
    :try_start_3d
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->s:Lcom/google/android/gms/internal/ads/zzdse;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->a:Lcom/google/android/gms/internal/ads/zzdsn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbih;

    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbih;-><init>(Lcom/google/android/gms/internal/ads/zzdsf;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbia;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->f:Lcom/google/android/gms/internal/ads/zzdsz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbia;-><init>(Lcom/google/android/gms/internal/ads/zzdsz;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsn;->e(Lcom/google/android/gms/ads/internal/client/zzda;Lcom/google/android/gms/internal/ads/zzbih;Lcom/google/android/gms/internal/ads/zzbia;)V
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_52

    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Ljava/lang/String;J)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->l:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->n:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->s()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->r:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_15

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->r()V

    goto :goto_c

    :cond_a
    if-eqz p1, :cond_15

    :goto_c
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->p:Z

    if-eqz p1, :cond_11

    goto :goto_15

    .line 2
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->w()V

    return-void

    .line 3
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->o()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->v()V

    :cond_1e
    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzdsb;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsf;->t(Lcom/google/android/gms/internal/ads/zzdsb;Z)V

    return-void
.end method

.method public final declared-synchronized l(Lorg/json/JSONObject;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->m:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->r:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsf;->r()V

    :cond_9
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsf;->u(ZZ)V

    return-void
.end method

.method public final n()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->m:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized o()Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->p:Z

    if-nez v0, :cond_25

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->u()Lcom/google/android/gms/ads/internal/util/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzaw;->l()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2b

    if-eqz v0, :cond_22

    goto :goto_25

    :cond_22
    const/4 v0, 0x0

    :goto_23
    monitor-exit p0

    return v0

    :cond_25
    :goto_25
    const/4 v0, 0x1

    goto :goto_23

    :cond_27
    :try_start_27
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->p:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return v0

    :catchall_2b
    move-exception v0

    monitor-exit p0

    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method

.method public final declared-synchronized p()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->p:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
