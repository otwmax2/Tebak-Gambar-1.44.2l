###### Class com.google.android.gms.internal.ads.zzdsa (com.google.android.gms.internal.ads.zzdsa)
.class public final Lcom/google/android/gms/internal/ads/zzdsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdrk;

.field private final b:Lcom/google/android/gms/internal/ads/zzdna;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/List;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrk;Lcom/google/android/gms/internal/ads/zzdna;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsa;->b:Lcom/google/android/gms/internal/ads/zzdna;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->d:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzdsa;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->d(Ljava/util/List;)V

    return-void
.end method

.method private final d(Ljava/util/List;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->e:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 2
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbjl;

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->z8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsa;->b:Lcom/google/android/gms/internal/ads/zzdna;

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbjl;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdna;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v3

    if-eqz v3, :cond_40

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdmz;->c:Lcom/google/android/gms/internal/ads/zzbpq;

    if-nez v3, :cond_3b

    goto :goto_40

    .line 7
    :cond_3b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbpq;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_45

    :cond_40
    :goto_40
    const-string v3, ""

    goto :goto_45

    :cond_43
    const-string v3, ""

    :goto_45
    move-object v6, v3

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->A8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsa;->b:Lcom/google/android/gms/internal/ads/zzdna;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbjl;->o:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzdna;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v3

    if-nez v3, :cond_64

    goto :goto_6a

    .line 12
    :cond_64
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzdmz;->d:Z

    if-eqz v3, :cond_6a

    const/4 v11, 0x1

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 v11, 0x0

    .line 13
    :goto_6b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsa;->d:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdrz;

    .line 14
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbjl;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsa;->b:Lcom/google/android/gms/internal/ads/zzdna;

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzdna;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzbjl;->p:Z

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbjl;->r:Ljava/lang/String;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbjl;->q:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/zzdrz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 17
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 18
    :cond_85
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdsa;->e:Z

    .line 19
    monitor-exit v0

    return-void

    :catchall_89
    move-exception p1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_89

    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdsa;->e:Z

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsa;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrk;->t()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsa;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrk;->g()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->d(Ljava/util/List;)V

    goto :goto_23

    .line 4
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsa;->c()V

    .line 5
    monitor-exit v1

    return-object v0

    .line 6
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsa;->d:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdrz;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrz;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_29

    .line 9
    :cond_3d
    monitor-exit v1

    return-object v0

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    goto :goto_43

    :goto_42
    throw v0

    :goto_43
    goto :goto_42
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdry;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdry;-><init>(Lcom/google/android/gms/internal/ads/zzdsa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrk;->s(Lcom/google/android/gms/internal/ads/zzbjs;)V

    return-void
.end method
