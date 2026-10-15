###### Class com.google.android.gms.internal.ads.zzeay (com.google.android.gms.internal.ads.zzeay)
.class public final Lcom/google/android/gms/internal/ads/zzeay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/zzeyf;

.field private e:Lcom/google/android/gms/internal/ads/zzeyc;

.field private f:Lcom/google/android/gms/ads/internal/client/zzu;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->d:Lcom/google/android/gms/internal/ads/zzeyf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->e:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->f:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->c:Ljava/lang/String;

    return-void
.end method

.method private final h(Lcom/google/android/gms/internal/ads/zzeyc;JLcom/google/android/gms/ads/internal/client/zze;Z)V
    .registers 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyc;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay;->b:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay;->e:Lcom/google/android/gms/internal/ads/zzeyc;

    if-nez v1, :cond_11

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->e:Lcom/google/android/gms/internal/ads/zzeyc;

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->b:Ljava/util/Map;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzu;

    .line 4
    iput-wide p2, p1, Lcom/google/android/gms/ads/internal/client/zzu;->p:J

    .line 5
    iput-object p4, p1, Lcom/google/android/gms/ads/internal/client/zzu;->q:Lcom/google/android/gms/ads/internal/client/zze;

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->r6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_33

    if-eqz p5, :cond_33

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->f:Lcom/google/android/gms/ads/internal/client/zzu;

    :cond_33
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->f:Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzcuh;
    .registers 8

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcuh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay;->e:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeay;->d:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeay;->c:Ljava/lang/String;

    const-string v2, ""

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcuh;-><init>(Lcom/google/android/gms/internal/ads/zzeyc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzeyf;Ljava/lang/String;)V

    return-object v6
.end method

.method public final c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->a:Ljava/util/List;

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzeyc;)V
    .registers 14

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyc;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay;->b:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    new-instance v7, Landroid/os/Bundle;

    .line 3
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    :try_start_22
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_16

    :catch_2c
    nop

    goto :goto_16

    .line 7
    :cond_2e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->q6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_4f

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->G:Ljava/lang/String;

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzeyc;->H:Ljava/lang/String;

    .line 12
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzeyc;->I:Ljava/lang/String;

    .line 13
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzeyc;->J:Ljava/lang/String;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    goto :goto_53

    :cond_4f
    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 14
    :goto_53
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzeyc;->F:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/ads/internal/client/zzu;-><init>(Ljava/lang/String;JLcom/google/android/gms/ads/internal/client/zze;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->a:Ljava/util/List;

    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->b:Ljava/util/Map;

    .line 16
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzeyc;JLcom/google/android/gms/ads/internal/client/zze;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeay;->h(Lcom/google/android/gms/internal/ads/zzeyc;JLcom/google/android/gms/ads/internal/client/zze;Z)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzeyc;JLcom/google/android/gms/ads/internal/client/zze;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeay;->h(Lcom/google/android/gms/internal/ads/zzeyc;JLcom/google/android/gms/ads/internal/client/zze;Z)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzeyf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->d:Lcom/google/android/gms/internal/ads/zzeyf;

    return-void
.end method
