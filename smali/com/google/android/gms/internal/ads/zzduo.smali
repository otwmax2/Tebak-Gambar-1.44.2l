###### Class com.google.android.gms.internal.ads.zzduo (com.google.android.gms.internal.ads.zzduo)
.class public final Lcom/google/android/gms/internal/ads/zzduo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcgd;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final d:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/zzfen;

.field private final h:Lcom/google/android/gms/internal/ads/zzezj;

.field private final i:Lcom/google/android/gms/internal/ads/zzdpd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzeyx;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;Lcom/google/android/gms/internal/ads/zzdpd;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduo;->a:Lcom/google/android/gms/internal/ads/zzcgd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduo;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzduo;->c:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzduo;->d:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzduo;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzduo;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzduo;->g:Lcom/google/android/gms/internal/ads/zzfen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgd;->y()Lcom/google/android/gms/internal/ads/zzezj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduo;->h:Lcom/google/android/gms/internal/ads/zzezj;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzduo;->i:Lcom/google/android/gms/internal/ads/zzdpd;

    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduo;->b:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfeb;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfec;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfec;->f()Lcom/google/android/gms/internal/ads/zzfec;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->h()Lcom/google/android/gms/internal/ads/zzblw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzduo;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzduo;->c:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzduo;->a:Lcom/google/android/gms/internal/ads/zzcgd;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcgd;->B()Lcom/google/android/gms/internal/ads/zzfep;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzblw;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzfep;)Lcom/google/android/gms/internal/ads/zzbmf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbmc;->b:Lcom/google/android/gms/internal/ads/zzblz;

    const-string v3, "google.afma.response.normalize"

    .line 5
    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzbmf;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzblx;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    const-string v2, ""

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdul;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdul;-><init>(Lcom/google/android/gms/internal/ads/zzduo;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzduo;->e:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfuj;->m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdum;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzdum;-><init>(Lcom/google/android/gms/internal/ads/zzblv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduo;->e:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfuj;->m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdun;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdun;-><init>(Lcom/google/android/gms/internal/ads/zzduo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduo;->e:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfuj;->m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzduo;->g:Lcom/google/android/gms/internal/ads/zzfen;

    .line 10
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfem;->a(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfen;Lcom/google/android/gms/internal/ads/zzfec;)V

    return-object p1
.end method

.method private final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "ad_types"

    .line 1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string v3, "unknown"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Lorg/json/JSONArray;

    .line 4
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzduo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2c} :catch_2d

    return-object p1

    :catch_2d
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to update the ad types for rendering. "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7} :catch_e

    const-string p0, "request_id"

    .line 2
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_e
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduo;->d:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzl;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "true"

    if-nez v1, :cond_115

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->z6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_115

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzduo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->L6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string v1, "&request_id="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_4c

    add-int/lit8 v1, v1, 0xc

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4c
    const-string v1, ""

    .line 9
    :cond_4e
    :goto_4e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_62

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeek;

    const/16 v1, 0xf

    const-string v2, "Invalid ad string."

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeek;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    :cond_62
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzduo;->a:Lcom/google/android/gms/internal/ads/zzcgd;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcgd;->q()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzduo;->i:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v4, v1, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpd;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_105

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzduo;->i:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_105

    .line 15
    :try_start_86
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "is_gbid"

    .line 16
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 17
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_86 .. :try_end_99} :catch_9a

    goto :goto_9c

    .line 18
    :catch_9a
    :cond_9a
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    :goto_9c
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_a3

    goto :goto_105

    :cond_a3
    const-string v6, "&"

    .line 20
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-eq v6, v5, :cond_b2

    const/4 v5, 0x0

    .line 21
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_b3

    :cond_b2
    move-object v5, v7

    .line 22
    :goto_b3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ba

    goto :goto_105

    :cond_ba
    const/16 v6, 0xb

    .line 23
    :try_start_bc
    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const-string v6, "UTF-8"

    .line 24
    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_c6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bc .. :try_end_c6} :catch_ee

    .line 25
    :try_start_c6
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "arek"

    .line 26
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_c6 .. :try_end_d1} :catch_d2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c6 .. :try_end_d1} :catch_ee

    goto :goto_e9

    :catch_d2
    move-exception v6

    .line 27
    :try_start_d3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to get key from QueryJSONMap"

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v8

    const-string v9, "CryptoUtils.getKeyFromQueryJsonMap"

    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    :goto_e9
    invoke-static {v5, v1, v7, v3}, Lcom/google/android/gms/internal/ads/zzezj;->b([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdpd;)Ljava/lang/String;

    move-result-object v0
    :try_end_ed
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d3 .. :try_end_ed} :catch_ee

    goto :goto_105

    :catch_ee
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Failed to decode the adResponse. "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v3

    const-string v5, "PreloadedLoader.decryptAdResponseIfNecessary"

    .line 32
    invoke-virtual {v3, v1, v5}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 33
    :cond_105
    :goto_105
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10c

    goto :goto_115

    .line 34
    :cond_10c
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzduo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzduo;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    .line 35
    :cond_115
    :goto_115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduo;->d:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzl;->G:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v0, :cond_174

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->x6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_130

    goto :goto_15c

    .line 39
    :cond_130
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->o:Ljava/lang/String;

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzduo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzc;->p:Ljava/lang/String;

    .line 41
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzduo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_169

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_169

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzduo;->a:Lcom/google/android/gms/internal/ads/zzcgd;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcgd;->q()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzduo;->i:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object v2

    const-string v3, "rid"

    .line 46
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_15c
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->o:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzc;->p:Ljava/lang/String;

    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzduo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzduo;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    .line 50
    :cond_169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduo;->i:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ridmm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_174
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeek;

    const/16 v1, 0xe

    const-string v2, "Mismatch request IDs."

    .line 52
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeek;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzduo;->d:Lcom/google/android/gms/internal/ads/zzeyx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzeyl;-><init>(Lcom/google/android/gms/internal/ads/zzeyx;)V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeyn;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzeyn;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeyo;-><init>(Lcom/google/android/gms/internal/ads/zzeyl;Lcom/google/android/gms/internal/ads/zzeyn;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzdul (com.google.android.gms.internal.ads.zzdul)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzduo;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzduo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdul;->a:Lcom/google/android/gms/internal/ads/zzduo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdul;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdul;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdul;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v4, "headers"

    new-instance v5, Lorg/json/JSONObject;

    .line 4
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "body"

    .line 5
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "base_url"

    const-string v4, ""

    .line 6
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "signals"

    new-instance v4, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "request"

    .line 8
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "response"

    .line 9
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "flags"

    new-instance v1, Lorg/json/JSONObject;

    .line 10
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_49} :catch_4e

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1

    :catch_4e
    move-exception p1

    .line 12
    new-instance v0, Lorg/json/JSONException;

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Preloaded loader: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzdum (com.google.android.gms.internal.ads.zzdum)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdum;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzblv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzblv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdum;->a:Lcom/google/android/gms/internal/ads/zzblv;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdum;->a:Lcom/google/android/gms/internal/ads/zzblv;

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblv;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzdun (com.google.android.gms.internal.ads.zzdun)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdun;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzduo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzduo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdun;->a:Lcom/google/android/gms/internal/ads/zzduo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdun;->a:Lcom/google/android/gms/internal/ads/zzduo;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzduo;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method
